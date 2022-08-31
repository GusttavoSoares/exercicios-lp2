<%--
Escreva uma página JSP que apresenta as seguintes informações, utilizar um objeto do tipo LocalDate para resolver o exercício:
Uma tabela HTML com apenas datas dos dias pares dos próximos 45 dias em formato DD/MM/AAAA (Atenção no formato da Data);
Uma tabela HTML com apenas datas dos dias impares dos últimos 45 dias em formato DD/MM (Atenção no formato da Data).
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<html>
<head>
    <title>Exercício 5</title>
</head>
<body>
<%!
LocalDate date = LocalDate.now();
LocalDate dateAux = date;
DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
String formattedString;
%>

<table>
    <%
        for (int i = 1; i <= 45; i++){
            dateAux = date.plusDays(i);
            if(dateAux.getDayOfMonth() % 2 == 0) {
                formattedString = dateAux.format(formatter);
    %>
        <tr><td> <% out.print(formattedString); %> </td></tr>
    <%
            }
        }
    %>
</table>

<h1>Tabela 2</h1>
<%!
    LocalDate date2 = LocalDate.now();
    DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("dd/MM");
    String formattedString2;
%>

<table>
<%
  for (int i = 1; i <= 45; i++){
      dateAux = date2.plusDays(i);
    if(dateAux.getDayOfMonth() % 2 != 0) {
        formattedString2 = dateAux.format(formatter2);
%>
<tr><td> <% out.print(formattedString2); %> </td></tr>

<%
    }
  }
%>
</table>
</body>
</html>
