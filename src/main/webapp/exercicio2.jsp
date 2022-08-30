<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    for (int i = 1; i <= 100 ; i++) {
        out.print("<p>" + i + "</p>");
    }
%>
</body>
</html>
