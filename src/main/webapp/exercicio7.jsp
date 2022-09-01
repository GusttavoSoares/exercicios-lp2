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
        String regex2 = "[^a-záàâãéèêíïóôõöúçñ]+";
        String regex = "\\d+";

        palavra = palavra.replaceAll(regex, " "); // tira os números
        palavra = palavra.replaceAll(regex2, " "); // tira os caracteres especiais
        int count = 0;

        for (int i = 0; i < palavra.length() ; i++) {
            if (
                    palavra.charAt(i) == ' ' ||
                    palavra.charAt(i) == 'a' ||
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