package za.ac.tut.model.web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import za.ac.tut.model.bl.DoctorFacadeLocal;
import za.ac.tut.model.entities.Doctor;

@MultipartConfig
public class AddServlet extends HttpServlet {
    @EJB
    private DoctorFacadeLocal df1;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String gender = request.getParameter("gender");
        Integer age = Integer.parseInt(request.getParameter("age"));
        
        String [] tas = request.getParameterValues("tasks");
        List<String> tasks = new ArrayList<>();
        
        for (int i = 0; i < tas.length; i++) {
            tasks.add(tas[i]);
        }
        
        Part image_part = request.getPart("image");
        byte [] image_byte = getImageByte(image_part);
        
        Doctor doctor = createDoc(id,name,surname,gender,age,tasks,image_byte);
        df1.create(doctor);
        
        request.setAttribute("doctor", doctor);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_outcome.jsp");
        disp.forward(request, response);
    }

    private byte[] getImageByte(Part image_part) {
        InputStream imageInputStream = null;
        byte [] imageBlob = null;
        
        try {
            
            imageInputStream = image_part.getInputStream();
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            int value;
            
            while((value = imageInputStream.read(buffer)) != -1){
                baos.write(buffer, 0, value);
            }
            
            imageBlob = baos.toByteArray();
        } catch (IOException ex) {
            Logger.getLogger(AddServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return imageBlob;
    }

    private Doctor createDoc(Long id, String name, String surname, String gender, Integer age, List<String> tasks, byte[] image_byte) {
        Doctor d = new Doctor();
        d.setId(id);
        d.setName(name);
        d.setSurname(surname);
        d.setGender(gender);
        d.setAge(age);
        d.setTasks(tasks);
        d.setImage_source(image_byte);
        return d;
    }


    
    

}
