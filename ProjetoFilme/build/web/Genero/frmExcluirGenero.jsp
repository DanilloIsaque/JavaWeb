<%-- 
    Document   : frmExcluirGenero
    Created on : 11 de jun. de 2023, 05:09:53
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
     <form action ="excluirGenero.jsp" method="POST">
          <label>Código do gênero</label>
            <input type="text" disabled name="id" value="<%request.getParameter("id");%>">  
            <br> 
         <label>Nome do gênero</label>
            <input type="text" disabled name="nome"value="<%request.getParameter("nome");%>">
            <button type="submit">Excluir</button>
    </body>
</html>
