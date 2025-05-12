<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Doc Part Page</title>
    </head>
    <body>
        <h1>View Doctors Partial using the range!</h1>
        <form action="ViewPServlet.do" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Start:</td>
                        <td><input type="text" name="start"></td>
                    </tr>
                    <tr>
                        <td>End:</td>
                        <td><input type="text" name="end"></td>
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
