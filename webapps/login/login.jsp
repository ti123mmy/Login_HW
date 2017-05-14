<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%
    String user = request.getParameter("account");
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://140.120.49.205:3306/4104029003","4104029003", "Ss4104029003!");
      Statement st = con.createStatement();
      ResultSet rs;
      rs = st.executeQuery("select * from login where account='" + user + "' and pass='" + pwd + "'");
      if (rs.next()) {
          session.setAttribute("user", user);
          //out.println("welcome " + userid);
          //out.println("<a href='logout.jsp'>Log out</a>");
          response.sendRedirect("afterlogin.jsp");
      } else {
          out.println("帳號密碼輸入錯誤！ <a href='index.jsp'>  點我重新登入</a>");
      }
      rs.close();
      st.close();
      con.close();
%>
