<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entities.Doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Using NS Page</title>
    </head>
    <body>
        <h1>Viewing doctors using name and surname!</h1>
        <%
            List<Doctor> doctors = (List<Doctor>) request.getAttribute("doctor");
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
                    for (int j = 0; j < tasks.size(); j++) {
                            list += tasks.get(j) +" ";
                        }
                    
                    String image_source = "data:image/*;Base64"+Base64.getEncoder().encodeToString(doctor.getImage_source());
            %>
            <tbody>
                <tr>
                    <td></td>
                    <td><%= id%></td>
                </tr>
                <tr>
                    <td></td>
                    <td><%= name%></td>
                </tr>
                <tr>
                    <td></td>
                    <td><%=surname %></td>
                </tr>
                <tr>
                    <td></td>
                    <td><%=gender %></td>
                </tr>
                <tr>
                    <td></td>
                    <td><%=age %></td>
                </tr>
                <tr>
                    <td></td>
                    <td><%=list %></td>
                </tr>
                <tr>
                    <td></td>
                    <td><img src="<%=image_source %>" width="20px" height="20px"></td>
                </tr>
            </tbody>
            <%}%>
        </table>

    </body>
</html>
