/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author Hoang Cao
 */
public class DBContext {

    private static HashMap<String, String> environmentMap = new HashMap<>();

    private DBContext() {

    }

    // Static blocks chỉ chạy một lần duy nhất khi ta tạo ra một object của class này hoặc ta truy cập vào một static member
    // Sau đó, ta có tạo object hay truy cập static member đi nữa thì static block sẽ không chạy.
    static {
        try {
            System.out.println("IF READ ONLY ONCE, SHOW THIS LINE ONCE!");
            InitialContext ic = new InitialContext();

            environmentMap.put("imagePath", (String) ic.lookup("java:comp/env/imagePath"));
            environmentMap.put("contextPath", (String) ic.lookup("java:comp/env/contextPath"));
            environmentMap.put("severName", (String) ic.lookup("java:comp/env/severName"));
            environmentMap.put("dbName", (String) ic.lookup("java:comp/env/dbName"));
            environmentMap.put("portNumber", (String) ic.lookup("java:comp/env/portNumber"));
        } catch (NamingException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static Connection getConnection() {
        Connection con = null;
        String url = "jdbc:sqlserver://" + getEnvironmentVariable("severName") + ":" + getEnvironmentVariable("portNumber")
                + ";databaseName=" + getEnvironmentVariable("dbName");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(url, "sa", "123456");
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return con;
    }

    public static String getEnvironmentVariable(String name) {
        return environmentMap.get(name);
    }
}
