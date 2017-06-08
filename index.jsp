<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>登入頁面</title>
    </head>
    <body background="123.jpg">
      <form method="post" action="login.jsp">
        <center>
          <table border="1" width="18%" cellpadding="5" style="font-size:25px;font-family:Comic Sans;" bgcolor="white">
          <thead>
            <tr>
              <th colspan="2">登入</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>帳號</td>
              <td><input type="text" name="account" placeholder="請輸入帳號" value="" required/></td>
            </tr>

            <tr>
              <td>密碼</td>
              <td><input type="password" name="pass" placeholder="請輸入密碼" value="" required/></td>
            </tr>
            <tr>
              <td></td>
              <td><input type="submit" value="登入"/>     <input type="reset" value="清除"/></td>
            </tr>
          </tbody>
        </table>
        <a href="register.jsp"><br><br>還沒有帳號？點我註冊</a>
        </center>
      </form>

    </body>
 </html>
