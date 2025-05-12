<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entities.Doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Range Page</title>
    </head>
    <body>
        <h1>Viewing Doctors in the database using range!</h1>
        <%
            List<Doctor> doctors = (List<Doctor>)request.getAttribute("doctor");
        %>
        <table>
            <%
                for (int i = 0; i < doctors.size(); i++) {
                    Doctor doctor = doctors.get(i);
                    String name = doctor.getName();
                    String surname = doctor.getSurname();
                    String gender = doctor.getGender();
                    Integer age = doctor.getAge();
                    Long id = doctor.getId();
                    List<String> tasks = doctor.getTasks();
                    String taskList = "";
                    for (int j = 0; j < tasks.size(); j++) {
                            taskList += tasks.get(j) + "\n";
                        }
                    
                    String image_source = "data:image/*;Base64"+Base64.getEncoder().encodeToString(doctor.getImage_source());
                
            %>
            <tbody>
                <tr>
                    <td>Stuff Number:</td>
                    <td><%=id%></td>
                </tr>
                <tr>
                    <td>Doctor Name:</td>
                    <td><%=name%></td>
                </tr>
                <tr>
                    <td>Doctor Surname:</td>
                    <td><%=surname%></td>
                </tr>
                <tr>
                    <td>Doctor Gender:</td>
                    <td><%=gender%></td>
                </tr>
                <tr>
                    <td>Doctor Age:</td>
                    <td><%=age%></td>
                </tr>
                <tr>
                    <td>Doctor Tasks:</td>
                    <td><%=taskList%></td>
                </tr>
                <tr>
                    <td>Doctor Photo:</td>
                    <td><img src="<%=image_source%>" width="20px" height="20px"></td>
                </tr>
            </tbody>
            
            
            <%}%>
        </table>

    </body>
</html>
