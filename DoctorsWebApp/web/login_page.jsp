<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login Below!</h1>
        <form action="j_security_check" method="POST">
            <table border="0">
                
                <tbody>
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="j_username"/></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="text" name="j_password"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="LOGIN"/></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
