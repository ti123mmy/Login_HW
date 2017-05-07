<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>

<%request.setCharacterEncoding("UTF-8");%>

<%
    if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "" )){
%>
你沒有登入啦齁<br/>
<a href="index.jsp">請登入</a>
<%} else {
%>
歡迎回來！ <%=session.getAttribute("user")%>
<a href='logout.jsp'><br><br>按我登出！</a>
<%
    }
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body background="123.jpg">
    <form>
        <center>
        <table border="1" width="30%" cellpadding="5" style="font-size:25px;" bgcolor="white">
            <thead>
                <tr>
                    <th colspan="2">你的基本資料</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>姓名</td>
                    <td><%=session.getAttribute("name")%>
                    </td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td><%=session.getAttribute("email")%>
                    </td>
                </tr>

                <tr>
                    <td>帳號</td>
                    <td><%=session.getAttribute("user")%>
                    </td>
                </tr>

                <tr>
                    <td>密碼</td>
                    <td><%=session.getAttribute("pwd")%>
                    </td>
                </tr>

                <tr>
                    <td>生日</td>
                    <td><%=session.getAttribute("bdate")%>
                    </td>
                </tr>

                <tr>
                    <td>備註欄(選填)</td>
                    <td><%=session.getAttribute("amemo")%>
                    </td>
                </tr>
            </tbody>
        </table>
      </center>
    </form>
  </body>
</html>
