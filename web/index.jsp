<%-- 
    Document   : index
    Created on : Oct 5, 2022, 9:14:57 AM
    Author     : Shakith
--%>

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
    </body>
</html>
