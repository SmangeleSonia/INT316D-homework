<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Doctor Page</title>
    </head>
    <body>
        <h1>Add the doctor to the database</h1>
        <form action="AddServlet.do" method="POST" enctype="multipart/form-data">
            <table border="0">
                    <tr>
                        <td>Stuff Number:</td>
                        <td><input type="text" name="id"></td>
                    </tr>
                    <tr>
                        <td>Doctor Name:</td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td>Doctor Surname:</td>
                        <td><input type="text" name="surname"></td>
                    </tr>
                    <tr>
                        <td>Doctor Gender:</td>
                        <td>
                            <select name="gender">
                                <option>Select</option>
                                <option value="Female">Female</option>
                                <option value="Male">Male</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Doctor Age:</td>
                        <td><input type="text" name="age"></td>
                    </tr>
                    <tr>
                        <td>Doctor Duties:</td>
                        <td>
                            <div id="taskDiv">
                                <input type="text" name="tasks">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="button" onclick="addTasks()"  value="ADD ANOTHER TASK"></td>
                            </div>
                    </tr>
                    <tr>
                        <td>Doctor Photo:</td>
                        <td><input type="file" name="image" multiple="" accept="image/*"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="ADD DOCTOR"></td>
                    </tr>
            </table>
            <script>
                function addTasks(){
                    var taskDiv = document.getElementById("taskDiv");
                    taskDiv.appendChild(document.createElement("br"));
                    var newElement = document.createElement("input");
                    newElement.type="text";
                    newElement.name="tasks";
                    taskDiv.appendChild(newElement);
                }
            </script>
        </form>
    </body>
</html>
