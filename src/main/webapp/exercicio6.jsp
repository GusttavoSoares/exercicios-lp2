<%--
Escreva uma página JSP que defina um método que recebe como argumento um vetor ArrayList<Integer> e retorna com o valor inteiro somado do maior valor e menor valor armazenados no vetor.
Invoque o respectivo método e imprima o resultado na página JSP.
Caso o vetor esteja vazio o método retorna o valor zero;
Caso o vetor tenha apenas um valor armazenado, o método retorno o valor armazenado no vetor.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<html>
<head>
    <title>Exercício 6</title>
</head>
<body>
<%!

    ArrayList<Integer> numeros = new ArrayList<Integer>(Arrays.asList());
    public int soma(ArrayList<Integer> arrayList) {
        if (arrayList.size() == 0) {
            return 0;
        }

        if(arrayList.size() == 1) {
            return arrayList.get(0);
        }
        int numeroMaior;
        int numeroMenor;

        numeroMaior = arrayList.get(0);
        numeroMenor = arrayList.get(0);
        for ( int arrayNum : arrayList) {
            if (arrayNum < numeroMenor)
                numeroMenor = arrayNum;
            if (arrayNum > numeroMaior)
                numeroMaior = arrayNum;
        }
        return numeroMaior + numeroMenor;
    }
%>

<p> <%= soma(numeros) %></p>


</body>
</html>
