/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import DTO.FilmeDTO;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author isa
 */
public class FilmeDao {
    Connection conn;
    PreparedStatement pstm;
 
    
    public void CadastrarGenero(FilmeDTO objFilmeDto) throws ClassNotFoundException{
        String sql="INSERT INTO filme (nome_filme,id_genero) values(?,?)";
        conn= new ConexaoDao().conexaoBanco();
        
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, objFilmeDto.getNome_filme());
            pstm.setInt(2, objFilmeDto.getId_genero());
            pstm.execute();
            pstm.close();
            
            
        } catch (SQLException e) {
        }
    }
}
