/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import java.sql.*;

public class Conectar {
    //definimos el driver del motor que vamos a utilizar
    private static String DRIVER = "com.mysql.jdbc.Driver";
    //Cadena de conexión
    private static String URL = "jdbc:mysql://localhost:3306/base";
    //usuario de la base de datos
    private static String USERNAME = "root";
    //contraseña de la base de datos
    private static String PASSWORD = "n0m3l0"; // Los passwords se
    
    //metodo que establece la conexion
    public static java.sql.Connection obtenerConexion() {
        //se crea la variable de instancia Connection
        java.sql.Connection respuesta = null;
        try {
            Class.forName(DRIVER);
            //se crea el objeto conection para mantener la conecion
            respuesta = DriverManager.getConnection (URL,USERNAME,PASSWORD);
            //capturamos la expcion si la hay
        } catch (Exception e) {
            System.out.println("No se ha realizado la conexión...");
            //mostramos toda la informacion de la excepción que se produjo
            e.printStackTrace();
        }
        //retornamos el objeto de conexion o el valor nulo
        return respuesta;
    }
}
