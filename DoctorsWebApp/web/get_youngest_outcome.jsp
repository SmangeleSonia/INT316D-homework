<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entities.Doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Youngest Page</title>
    </head>
    <body>
        <h1>The Youngest Doctor!</h1>
        <%
            Doctor doctor = (Doctor)request.getAttribute("doctor");
            Long id = doctor.getId();
            String name = doctor.getName();
            String surname = doctor.getSurname();
            String gender = doctor.getGender();
            Integer age = doctor.getAge();
            List<String> tasks = doctor.getTasks();
            String list = "";
            for (int j = 0; j < 10; j++) {
                    list += tasks.get(j) +" ";
                }
            String image_source = "data:image/*;Base64"+Base64.getEncoder().encodeToString(doctor.getImage_source());
        %>
        <table border="0">
            
            <tbody>
                <tr>
                    <td></td>
                    <td><%=id %></td>
                </tr>
                <tr>
                    <td></td>
                    <td><%= name%></td>
                </tr>
                <tr>
                    <td></td>
                    <td><%= surname%></td>
                </tr>
                <tr>
                    <td></td>
                    <td><%= gender%></td>
                </tr>
                <tr>
                    <td></td>
                    <td><%=age %></td>
                </tr>
                <tr>
                    <td></td>
                    <td><%= list%></td>
                </tr>
                <tr>
                    <td></td>
                    <td><img src="<%=image_source %>" width="20px" height="20px"></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
