<%-- 
    Document   : cadastroGenero
    Created on : 11 de jun. de 2023, 03:28:27
    Author     : isa
--%>

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
       <%
           try {
                   GeneroDTO objGeneroDto = new GeneroDTO();
                    objGeneroDto.setNome_genero(request.getParameter("nomeGenero"));

                    GeneroDao objGeneroDao = new GeneroDao();
                    objGeneroDao.CadastrarGenero(objGeneroDto);
               } catch (Exception e) {
               
           }
            
       %>
    </body>
</html>
