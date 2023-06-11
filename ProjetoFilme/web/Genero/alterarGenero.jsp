<%-- 
    Document   : alterarGenero
    Created on : 11 de jun. de 2023, 05:30:43
    Author     : isa
--%>

<%@page import="DAO.GeneroDao"%>
<%@page import="DTO.GeneroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
          try {
                  GeneroDTO objGeneroDto = new GeneroDTO();
                  objGeneroDto.setId_genero(Integer.parseInt(request.getParameter("id")));
                  objGeneroDto.setNome_genero(request.getParameter("nome"));
                  GeneroDao objGeneroDao = new GeneroDao();
                  objGeneroDao.alterarGenero(objGeneroDto);
          } catch (Exception e) {
              }
      
      %>
    </body>
</html>
