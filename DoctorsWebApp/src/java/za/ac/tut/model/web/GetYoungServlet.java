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


public class GetYoungServlet extends HttpServlet {
    @EJB
    private DoctorFacadeLocal df1;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Doctor doctor = (Doctor)df1.getYoungest();
        request.setAttribute("doctor", doctor);
        
        RequestDispatcher disp = request.getRequestDispatcher("get_youngest_outcome.jsp");
        disp.forward(request, response);
    }


}
