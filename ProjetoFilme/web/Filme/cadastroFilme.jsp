<%-- 
    Document   : cadastroFilme
    Created on : 11 de jun. de 2023, 05:57:50
    Author     : isa
--%>

<%@page import="DTO.FilmeDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
      FilmeDTO objFilmeDto = new FilmeDTO();
      objFilmeDto.setNome_filme(request.getParameter("nomeFilme"));
      objFilmeDto.setId_genero(Integer.parseInt(request.getParameter("genero")));
      %>
    </body>
</html>
