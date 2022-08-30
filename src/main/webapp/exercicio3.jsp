<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Exercicio 3</title>
</head>
<body>
<%
  for (int i = 0; i <= 1000; i++) {
      if (i % 2 == 0) {
          out.println("<p>" + i + "</p");
      }
  }
%>
</body>
</html>
