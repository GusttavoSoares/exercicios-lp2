<%--
Escreva um código JSP que apresente no HTML a data atual. Utilize a
classe LocalDate para gerar a data atual. Apresentar a data no formato
DD/MM/AA.
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
<head>
    <title>Exercício 1</title>
</head>
<body>
<%! LocalDate time = LocalDate.now();
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
    String formattedString = time.format(formatter);%>

<%
    out.print("<h1>" + formattedString + "</h1>");
%>
</body>
</html>