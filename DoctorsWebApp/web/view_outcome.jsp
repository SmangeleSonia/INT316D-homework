
<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entities.Doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Viewing Page</title>
    </head>
    <body>
        <h1>Viewing Doctor!</h1>
        <%
            List<Doctor> doctors = (List<Doctor>) request.getAttribute("doctor");
        %>
        <table>
        <%
            for (int i = 0; i < doctors.size() ; i++) {
             Doctor doctor = doctors.get(i);
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
             for (int j = 0; j < tasks.size(); j++) {
                    list += tasks.get(j) + " ";
                }
            String image_source = "data:image/*;base64" + Base64.getEncoder().encodeToString(doctor.getImage_source());
        %>
        
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
            <%      
                }
        %>
        </table>
    </body>
</html>
