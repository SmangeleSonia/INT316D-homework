
package za.ac.tut.model.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.DoctorFacadeLocal;
import za.ac.tut.model.entities.Doctor;


public class EditServlet extends HttpServlet {

    @EJB
    private DoctorFacadeLocal df1;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        Integer age = Integer.parseInt(request.getParameter("age"));
        
        Doctor doctor = createDoc(id,name,surname,age);
        df1.edit(doctor);
        
        request.setAttribute("doctor", doctor);
        
        RequestDispatcher disp = request.getRequestDispatcher("edit_outcome.jsp");
        disp.forward(request, response);
        
    }

    private Doctor createDoc(Long id,String name, String surname, Integer age) {
        Doctor d = df1.find(id);
        d.setName(name);
        d.setSurname(surname);
        d.setAge(age);
        return d;
    }


}
