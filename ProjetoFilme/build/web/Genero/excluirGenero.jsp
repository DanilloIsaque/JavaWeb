<%-- 
    Document   : excluirGenero
    Created on : 11 de jun. de 2023, 05:14:28
    Author     : isa
--%>

<%@page import="DAO.GeneroDao"%>
<%@page import="DTO.GeneroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exclusão genero</title>
    </head>
    <body>
      <%
          try {
                  GeneroDTO objGeneroDto = new GeneroDTO();
                  objGeneroDto.setId_genero(Integer.parseInt(request.getParameter("id")));
                  GeneroDao objGeneroDao = new GeneroDao();
                  objGeneroDao.excluirGenero(objGeneroDto);
          } catch (Exception e) {
              }
      
      %>
    </body>
</html>
