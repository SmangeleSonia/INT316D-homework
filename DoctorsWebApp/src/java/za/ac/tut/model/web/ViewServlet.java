package za.ac.tut.model.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.DoctorFacadeLocal;
import za.ac.tut.model.entities.Doctor;


public class ViewServlet extends HttpServlet {
    @EJB
    private DoctorFacadeLocal df1;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Doctor> doctor = (List<Doctor>)df1.findAll();
        request.setAttribute("doctor", doctor);
        RequestDispatcher disp = request.getRequestDispatcher("view_outcome.jsp");
        disp.forward(request, response);
    }

   

}
