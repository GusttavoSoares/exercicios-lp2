<%@ page import="java.util.Locale" %><%--
Escreva uma página JSP que defina os seguintes métodos:
um método que recebe uma String e retorna um número inteiro com a quantidade de vogais da String;
um método que recebe uma String e retorna um número inteiro com a quantidade de consoantes da String;
Invoque os respectivos métodos e imprima os resultados na página JSP.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Exercício 7</title>
</head>
<body>
<%!
public int vogal(String palavra){
    palavra = palavra.toLowerCase();
    int count = 0;

    for (int i = 0; i < palavra.length() ; i++) {
        if (palavra.charAt(i) == 'a' ||
                palavra.charAt(i) == 'e' ||
                palavra.charAt(i) == 'i' ||
                palavra.charAt(i) == 'o' ||
                palavra.charAt(i) == 'u')
            count++;
    }
    return count;
}

public int consoante(String palavra){
    palavra = palavra.toLowerCase();
    int count = 0;

    for (int i = 0; i < palavra.length() ; i++) {
        if (palavra.charAt(i) == 'a' ||
                palavra.charAt(i) == 'e' ||
                palavra.charAt(i) == 'i' ||
                palavra.charAt(i) == 'o' ||
                palavra.charAt(i) == 'u')
            count++;
    }
    return palavra.length() - count;
}
%>

<p> Quantidade de vogal: <%= vogal("Gustavo")%></p>
<p> Quantidade de consoante: <%= consoante("Gustavo")%></p>

</body>
</html>
