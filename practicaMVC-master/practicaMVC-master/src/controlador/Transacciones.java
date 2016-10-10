/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import clases.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Conectar;

public class Transacciones {

    public Usuario getLogin(String nick, String clave) throws SQLException {
        boolean comprobar=false;
        Usuario usuario = new Usuario();
        String sql = "select * from tblusuario "
                + " where nick =  '" + nick + "' AND clave = '" + clave + "'";
        PreparedStatement stmt = Conectar.obtenerConexion().prepareStatement(sql);
        
        try {
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                usuario.setDocumento(Integer.parseInt(rs.getString("DOCUMENTO")));
                usuario.setNombre(rs.getString("NOMBRE"));
                usuario.setApellido(rs.getString("APELLIDO"));
                usuario.setTelefono(rs.getString("TELEFONO"));
                usuario.setCelular(rs.getString("CELULAR"));
                usuario.setEmail(rs.getString("EMAIL"));
                comprobar=true;
            }
            if(comprobar==false) usuario = null;
        } catch (SQLException ex) {
            usuario = null;
            System.out.println("hubo un error al traer los datos");
        }

        return usuario;
    }
}
