<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
      <form method="post" action="login.jsp">
    			<br>
    			帳號：<br><br>
    			<input type="text" name="account" placeholder="請輸入帳號" value=""/>
    			<br>
    			密碼：<br><br>
    			<input type="password" name="pass" placeholder="請輸入密碼" value=""/>
    			<br><br>
    			<input type="submit" value="登入"/>
  			  <input type="reset" value="清除"/>
          <a href = "register.jsp"><br><br>還沒有帳號？點我註冊</a>

    		</form>


    </body>
  </html>
