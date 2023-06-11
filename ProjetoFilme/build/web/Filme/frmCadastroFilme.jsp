<%-- 
    Document   : frmCadastroFilme
    Created on : 11 de jun. de 2023, 05:50:23
    Author     : isa
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DTO.GeneroDTO"%>
<%@page import="DAO.GeneroDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action ="cadastroFilme.jsp" method="POST">
            <label>Nome do Filme</label>
            <input type="text" name="nomeFilme">
        <select name="genero" >
    <option selected>Escolha...</option>
    <%
      GeneroDao objGeneroDao = new GeneroDao();
                  ArrayList<GeneroDTO> lista = objGeneroDao.consultaGenero();
                  for(int i = 0; i<lista.size(); i++){%>
                  <option value="<%lista.get(i).getId_genero();%>"><%lista.get(i).getNome_genero();%></option>
        
       <% }%>

    %>
    <button type="submit">Cadastrar</button>
    </body>
</html>
