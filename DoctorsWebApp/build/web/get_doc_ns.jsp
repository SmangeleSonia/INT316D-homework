<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Doctor Using Name Surname Page</title>
    </head>
    <body>
        <h1>View Doctors Using Name And Surname!</h1>
        <form action="ViewNSServlet.do" method="POST">
            <table border="0">
               
                <tbody>
                    <tr>
                        <td>Doctor Name:</td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td>Doctor Surname:</td>
                        <td><input type="text" name="surname"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="VIEW"></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
