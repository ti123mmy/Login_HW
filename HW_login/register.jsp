<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <form method="post" action="registration.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">請輸入基本資料</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>姓名</td>
                        <td><input type="text" name="name" value="" /></td>
                    </tr>

                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>

                    <tr>
                        <td>帳號</td>
                        <td><input type="text" name="account" value="" /></td>
                    </tr>

                    <tr>
                        <td>密碼</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>

                    <tr>
                        <td>生日</td>
                        <td><input type="date" name="bdate" value="1994-11-03"></td>
                    </tr>

                    <tr>
                        <td>備註欄</td>
                        <td><input type="text" name="memo" value="" /></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td><input type="submit" value="提交" />   <input type="reset" value="清除" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">已經註冊？ <a href="index.jsp">按我登入！</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
