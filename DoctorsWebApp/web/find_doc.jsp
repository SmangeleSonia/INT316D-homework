<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body>
        <h1>Find the doctor using id!</h1>
        <form action="FindServlet.do" method="POST">
            <table>
                <tr>
                    <td>Doctor ID:</td>
                    <td><input type="text" name="id"/> </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="UPDATE"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
