<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View By Age Range Page</title>
    </head>
    <body>
        <h1>View Doctors By Age Range!</h1>
        <form action="ViewByAgeServlet.do" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Min Age:</td>
                        <td><input type="text" name="min"></td>
                    </tr>
                    <tr>
                        <td>Max Age:</td>
                        <td><input type="text" name="max"></td>
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
