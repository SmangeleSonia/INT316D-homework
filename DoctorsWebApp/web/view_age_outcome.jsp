<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.model.entities.Doctor"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Doctors Range Page</title>
    </head>
    <body>
        <h1>View Doctors by age range in the database!</h1>
        <%
            List<Doctor> doctors = (List<Doctor>)request.getAttribute("doctor");
        %>
        <table border="0">
            <%
                for (int i = 0; i < doctors.size(); i++) {
                   Doctor doctor = doctors.get(i);
                   Long id = doctor.getId();
                   String name = doctor.getName();
                   String surname = doctor.getSurname();
                   String gender = doctor.getGender();
                   Integer age = doctor.getAge();
                   List<String> tasks = doctor.getTasks();
                   String list = "";
                   for (int j = 0; j < 10; j++) {
                           list += tasks.get(j) +"\n";
                       }
                    String image_source = "data:image/*;Base64"+Base64.getEncoder().encodeToString(doctor.getImage_source());
            %>
            <tbody>
                <tr>
                    <td>Stuff Number:</td>
                    <td><%= id%></td>
                </tr>
                <tr>
                    <td>Doctor Name:</td>
                    <td><%=name %></td>
                </tr>
                <tr>
                    <td>Doctor Surname:</td>
                    <td><%=surname %></td>
                </tr>
                <tr>
                    <td>Doctor Gender:</td>
                    <td><%= gender%></td>
                </tr>
                <tr>
                    <td>Doctor Age:</td>
                    <td><%= age%></td>
                </tr>
                <tr>
                    <td>Doctor Tasks:</td>
                    <td><%=list %></td>
                </tr>
                <tr>
                    <td>Doctor Photo:</td>
                    <td><img src="<%=image_source %>" width="20px" height="20px"</td>
                </tr>
            </tbody>
            <%}%>
        </table>

    </body>
</html>
