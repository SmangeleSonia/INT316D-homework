<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.model.entities.Doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Outcome Page</title>
    </head>
    <body>
        <h1>Searching Doctor Outcome!</h1>
        <%
            Doctor doctor = (Doctor)request.getAttribute("doctor");
            String name = doctor.getName();
            String surname = doctor.getSurname();
            Long id = doctor.getId();
            String gender = doctor.getGender();
            String title = "";
            if(gender.equalsIgnoreCase("Female")){
                title = "Miss";
            }
            else if(gender.equalsIgnoreCase("Male")){
                title = "Mr";
            }
            Integer age = doctor.getAge();
            
            List<String> tasks = doctor.getTasks();
            String list = "";
            for (int i = 0; i < tasks.size(); i++) {
                    list += tasks.get(i) + " ";
                }
            String image_source = "data:image/*;base64" + Base64.getEncoder().encodeToString(doctor.getImage_source());
        %>
        <p>
            The Doctor <%=id%> details below:
        </p>
        <table>
            <tr>
                <td>Doctor Name:</td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>Doctor Surname:</td>
                <td><%=surname%></td>
            </tr>
            <tr>
                <td>Doctor Title:</td>
                <td><%=title%></td>
            </tr>
            <tr>
                <td>Doctor Age:</td>
                <td><%=age%></td>
            </tr>
            <tr>
                <td>Doctor Tasks:</td>
                <td><%=list%></td>
            </tr>
            <tr>
                <td>Doctor Photo:</td>
                <td>
                    <img src="image_source" width="50px" height="50px">
                </td>
            </tr>
        </table>
    </body>
</html>
