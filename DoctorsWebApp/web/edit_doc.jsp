<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <body>
        <h1>Update Doctor Below!</h1>
        <form action="EditServlet.do" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Stuff Number:</td>
                        <td><input type="text" name="id"/></td>
                    </tr>
                    <tr>
                        <td>Doctor Name:</td>
                        <td><input type="text" name="name"/> </td>
                    </tr>
                    <tr>
                        <td>Doctor Surname:</td>
                        <td><input type="text" name="surname"/> </td>
                    </tr>
                    <tr>
                        <td>Doctor Age:</td>
                        <td><input type="text" name="age"/> </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="UPDATE"></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
