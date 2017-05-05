<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>

<%request.setCharacterEncoding("UTF-8");%>

<%
    if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "")) {
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
