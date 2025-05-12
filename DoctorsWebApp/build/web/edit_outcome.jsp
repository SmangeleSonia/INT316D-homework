<%@page import="za.ac.tut.model.entities.Doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Outcome Page</title>
    </head>
    <body>
        <h1>Updating doctor on the database!</h1>
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
        %>
        <p>
            <%=title%> <%=name%> <%=surname%> has been updated successful in the database.
        </p>
        <p>
            <button>
                <a href="add_doc.jsp">Previous Page</a>
            </button>
            <br>
            <button>
                <a href="menu.jsp">Menu Page</a>
            </button>
        </p>
    </body>
</html>
