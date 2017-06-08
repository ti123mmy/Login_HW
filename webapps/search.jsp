<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>

<jsp:useBean id="database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
  <jsp:setProperty property="port" name="database" value="3306"/>
  <jsp:setProperty property="db" name="database" value="4104029003"/>
  <jsp:setProperty property="user" name="database" value="4104029003"/>
  <jsp:setProperty property="password" name="database" value="Ss4104029003!"/>
</jsp:useBean>

<%
  String user = request.getParameter("account");
  database.connectDB();
  database.query("select * from login where account='" + user + "'");
  ResultSet rs = database.getRS();

%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
      <title>搜尋結果</title>
    </head>
    <body background="123.jpg">
      <div align="center">
        <table border="1" width="50%" cellpadding="5" style="font-size:15px;" bgcolor="white">
          <br><br> 查詢結果如下 <br><br>
          <tr>
            <th>帳號</th>
            <th>密碼</th>
            <th>姓名</th>
            <th>生日</th>
            <th>備註</th>
          </tr>

          <%-- <% String user = request.getParameter("user");
             if( user != null && user.length() > 0 ) {
                 <% @ include file="response.jsp" %>
             }
          %> --%>

        <%  if (rs.next()) {
        %><tr>
        <td><%=rs.getString("account")%></td>
        <td><%=rs.getString("pass")%></td>
        <td><%=rs.getString("name")%></td>
        <td><%=rs.getString("email")%></td>
        <td><%=rs.getString("memo")%></td>
          </tr>
      </table>
      <%    } else {
              out.println("查無此帳號！");
          }
        %>


    </div>
    <br>
      <br>
        <div align="center">
          <form action="search.jsp" method="post">
            <br>
              <br>使用其他帳號查詢=>
                <input type='text' name="account" size="15" required/>
                <br> <br>
                  <input type="hidden" name="sear" value="search"/>
                  <input type="submit" value="search"/>
                </form>
                <a href='logout.jsp'><br><br>按我回到登入頁面！</a><br><br>
              </div>
            </body>
          </html>
