
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


public class FindServlet extends HttpServlet {
    @EJB
    private DoctorFacadeLocal df1;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        
        Doctor doctor = df1.find(id);
        
        request.setAttribute("doctor", doctor);
        
        RequestDispatcher disp = request.getRequestDispatcher("find_outcome.jsp");
        disp.forward(request, response);
        
    }



}
