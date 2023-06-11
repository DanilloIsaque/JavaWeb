/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author isa
 */
public class ConexaoDao {
    
    public Connection conexaoBanco() throws ClassNotFoundException{//excecao
        
        Connection conn = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");//caminho onde fica o drive de conexao
            String url ="jdbc:mysql://localhost:3306/cinema?user=root&password=12345";
            
            conn=DriverManager.getConnection(url);
            
        } catch (SQLException e) {
            
        } 
        return conn;
    }
}
