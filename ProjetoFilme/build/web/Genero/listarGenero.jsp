<%-- 
    Document   : listarGenero
    Created on : 11 de jun. de 2023, 04:42:43
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
      <%
          try {
                  GeneroDao objGeneroDao = new GeneroDao();
                  ArrayList<GeneroDTO> lista = objGeneroDao.consultaGenero();
                  for(int i = 0; i<lista.size(); i++){
                  out.print("ID:" +lista.get(i).getId_genero()+"<br>");
                  out.print("Nome" +lista.get(i).getNome_genero()+"<br>");
                  out.print("<a href='frmExcluirGenero.jsp?id='" + lista.get(i).getId_genero()+"&nome="+lista.get(i).getNome_genero()+"'>Excluir</a>");
                     %><br> <% 
                  out.print("<a href='frmAlterarGenero.jsp?id='" + lista.get(i).getId_genero()+"&nome="+lista.get(i).getNome_genero()+"'>Alterar</a>");
      %><br> <% 
                    }
          }
              catch (Exception e) {
              }
      %>
    </body>
  
</html>
