<%-- 
    Document   : frmAlterarGenero
    Created on : 11 de jun. de 2023, 05:28:40
    Author     : isa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <form action ="alterarGenero.jsp" method="POST">
          <label>Código do gênero</label>
            <input type="hidden" name="id" value="<%request.getParameter("id");%>">  
            <br> 
         <label>Nome do gênero</label>
            <input type="text" name="nome"value="<%request.getParameter("nome");%>">
            <button type="submit">Alterar</button>
    </body>
</html>
