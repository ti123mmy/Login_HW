<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id = "database" class = "com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database" value="3306" />
  <jsp:setProperty property="db" name="database" value="4104029003" />
  <jsp:setProperty property="user" name="database" value="4104029003" />
  <jsp:setProperty property="password" name="database" value="Ss4104029003!" />
</jsp:useBean>
<%
    database.connectDB();
    String user = request.getParameter("account");
    String pwd = request.getParameter("pass");
    // Class.forName("com.mysql.jdbc.Driver");
    //   Connection con = DriverManager.getConnection("jdbc:mysql://140.120.49.205:3306/4104029003","4104029003", "Ss4104029003!");
    //   Statement st = con.createStatement();
      ResultSet rs;
      database.query("select * from login where account='" + user + "' and pass='" + pwd + "'");
      rs = database.getRS();
      // rs = st.executeQuery("select * from login where account='" + user + "' and pass='" + pwd + "'");
      if (rs.next()) {
          session.setAttribute("user", user);
          out.println("登入成功！一秒鐘跳轉到主畫面！");
          response.setHeader("Refresh", "1, URL=afterlogin.jsp");
          //response.sendRedirect("afterlogin.jsp");

      } else {
          out.println("帳號密碼輸入錯誤！ <a href='index.jsp'>  點我重新登入</a>");
      }
      // rs.close();
      // st.close();
      // con.close();
%>
