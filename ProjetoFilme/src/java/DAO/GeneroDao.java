/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import DTO.GeneroDTO;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;
/**
 *
 * @author isa
 */
public class GeneroDao {
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<GeneroDTO> lista = new ArrayList<>();
    
    public void CadastrarGenero(GeneroDTO objGeneroDto) throws ClassNotFoundException{
        String sql="INSERT INTO genero (nome_genero) values(?)";
        conn= new ConexaoDao().conexaoBanco();
        
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, objGeneroDto.getNome_genero());
            pstm.execute();
            pstm.close();
            
            
        } catch (SQLException e) {
        }
    }
    
    public ArrayList<GeneroDTO> consultaGenero() throws ClassNotFoundException{
        String sql="SELECT * FROM genero";
        conn= new ConexaoDao().conexaoBanco();
        
        try {
          pstm = conn.prepareStatement(sql);
          rs= pstm.executeQuery(sql);
          while(rs.next()){
              GeneroDTO objGeneroDto = new GeneroDTO();
              objGeneroDto.setId_genero(rs.getInt("id_genero"));
              objGeneroDto.setNome_genero(rs.getString("nome_genero"));
              
              lista.add(objGeneroDto);
          }
          
        } catch (SQLException e) {
        }
        
        return lista;
    }
    public void excluirGenero(GeneroDTO objGeneroDto) throws ClassNotFoundException{
        String sql="DELETE FROM genero where id_genero=?";
        conn= new ConexaoDao().conexaoBanco();
        
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, objGeneroDto.getId_genero());
            pstm.execute();
            pstm.close();
            
            
        } catch (SQLException e) {
        }
    }  

 public void alterarGenero(GeneroDTO objGeneroDto) throws ClassNotFoundException{
        String sql="UPDATE genero SET nome_genero=? WHERE id_genero=?";
        conn= new ConexaoDao().conexaoBanco();
        
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, objGeneroDto.getNome_genero());
             pstm.setInt(2, objGeneroDto.getId_genero());
            
            pstm.execute();
            pstm.close();
            
            
        } catch (SQLException e) {
        }
    }  
}
