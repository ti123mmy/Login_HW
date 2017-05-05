<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%
    String user = request.getParameter("account");
    String pwd = request.getParameter("pass");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String bdate = request.getParameter("bdate");
    String amemo = request.getParameter("memo");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://140.120.49.205:3306/4104029003",
            "4104029003", "Ss4104029003!");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into login(name, email, account, pass, bdate, memo) values ('" + name + "','" + email + "','" + user + "','" + pwd + "','" + bdate + "','" + amemo + "')");
    if (i > 0) {
        response.sendRedirect("afterregister.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
