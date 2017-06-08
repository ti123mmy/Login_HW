<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>

<%request.setCharacterEncoding("UTF-8");%>

<%
    if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "" )){
%>
你沒有登入啦齁！一秒鐘跳回登入頁面！<br/>
<%response.setHeader("Refresh", "1, URL=index.jsp");%>
<%} else {
%>
歡迎回來！ <%=session.getAttribute("user")%>
<a href='logout.jsp'><br><br>按我登出！</a>
<%
    }
%>
<%
   Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://140.120.49.205:3306/4104029003",
          "4104029003", "Ss4104029003!");
   String sql = "select * from login";
   PreparedStatement pstmt = con.prepareStatement(sql);
   ResultSet rs = pstmt.executeQuery();

   %>
  <center>
   <table border="1" width="50%" cellpadding="5" style="font-size:15px;" bgcolor="white">
     <br><br>所有的帳戶資訊
       <tr>
         <th>帳號</th>
         <th>密碼</th>
         <th>名字</th>
         <th>信箱</th>
         <th>備註</th>
       </tr>
   <%
       while(rs.next()){

    %>
        <tr>
          <td><%=rs.getString("account")%></td>
          <td><%=rs.getString("pass")%></td>
          <td><%=rs.getString("name")%></td>
          <td><%=rs.getString("email")%></td>
          <td><%=rs.getString("memo")%></td>
        </tr>

        <%
       }
%>
    </table>
  </center>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body background="123.jpg">
    <center>
    <form action="search.jsp" method="post">
          <br><br><br><br>使用帳號查詢 <br><br>
          <input type='text' name="account" size="15" required/><br>
          <input type="hidden" name="sear" value="search"/>
          <br><br>
          <input type="submit" value="search" />
    </form>
  </center>
  </body>
</html>
