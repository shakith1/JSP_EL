<%-- 
    Document   : index
    Created on : Oct 5, 2022, 9:14:57 AM
    Author     : Shakith
--%>

<%@page import="com.infinity.webapp.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EL</title>
    </head>
    <body>

        <h1>${10+20}</h1>
        <h1>${20/20}</h1>
        <h1>${20 div 20}</h1>
        <h1>${20 % 20}</h1>
        <h1>${20 mod 20}</h1>
        <h1>${20 == 20}</h1>
        <h1>${20 eq 20}</h1>
        <h1>${20 != 20}</h1>
        <h1>${20 ne 20}</h1>

        <jsp:useBean class="com.infinity.webapp.User" id="user" />

        <jsp:setProperty name="user" property="name" value="Admin"/>
        <jsp:setProperty name="user" property="email" value="admin@gmail.com"/>
        <jsp:setProperty name="user" property="address" value="Colombo" />

        ${user}

        <%
            Map map = new HashMap();
            map.put("name", "ABC");

            pageContext.setAttribute("map", map);
        %>

        <h1>${map.name}</h1>

        <%
            List list = new ArrayList();
            list.add(10);
            list.add(30);
            list.add(30);

            pageContext.setAttribute("list", list);
        %>

        <h1>${list[0]}</h1>

        <%
            int[] a = {10, 20, 30};

            pageContext.setAttribute("a", a);
        %>

        <h1>${a[1]}</h1>

        <%
            pageContext.setAttribute("name", null);
        %>

        <h1> ${name eq null ? "Null" : "Not Null"}</h1>

        <%
            pageContext.setAttribute("name", "");
        %>

        <h1>${empty name ? "Empty" : "Not Empty"}</h1>

        <!--Implicit Objects-->

        ${initParam.name}

        ${cookie["JSESSIONID"]}
        <br/>
        <c:forEach var="h" items="${header}">
            ${h}<br/>
        </c:forEach>

        <%--${cookie}--%>

        <h1>${param.name}</h1>

        <h1>${paramValues.name[0]}</h1>

        <c:forEach var="p" items="${paramValues.name}">
            ${p}
        </c:forEach>

        <!--    Other    -->

        <%
            User u1 = new User();
            u1.setName("Admin");
            u1.setEmail("admin@gmail.com");
               
            pageContext.setAttribute("user1", u1);
               
            ArrayList al = new ArrayList();
            al.add("A");
            al.add("B");
            al.add("C");
            al.add("D");
               
            pageContext.setAttribute("al", al);
               
            int ar[] = {10,20,30};
               
            pageContext.setAttribute("ar", ar);
            
            HashMap map1 = new HashMap();
            map1.put("name", "Admin");
            map1.put("email", "admin@gmail.com");
            
            pageContext.setAttribute("map1", map1);   
        %>
        
        ${ar[0]}
        

    </body>
</html>
