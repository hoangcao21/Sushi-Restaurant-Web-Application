/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Menu;

/**
 *
 * @author Hoang Cao
 */
public class MenuDAO {

    Connection con;

    public MenuDAO() throws Exception {

        con = DBContext.getConnection();

    }

    public ArrayList<Menu> selectAllMenus() throws SQLException {
        ArrayList<Menu> menus = new ArrayList<>();

        String sql = "SELECT [id]\n"
                + "      ,[productName]\n"
                + "      ,[price]\n"
                + "      ,[content]\n"
                + "  FROM [SushiRestaurant].[dbo].[Menu]";

        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            String id = rs.getString(1);
            String productName = rs.getString(2);
            String price = rs.getString(3);
            String content = rs.getString(4);

            menus.add(new Menu(id, productName, price, content));
        }

        return menus;
    }

    public Menu selectMenuById(String idPro) throws SQLException {
        Menu menu = null;

        String sql = "SELECT [id]\n"
                + "      ,[productName]\n"
                + "      ,[price]\n"
                + "      ,[content]\n"
                + "  FROM [SushiRestaurant].[dbo].[Menu]"
                + "WHERE id = ?";

        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, idPro);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            String id = rs.getString(1);
            String productName = rs.getString(2);
            String price = rs.getString(3);
            String content = rs.getString(4);

            menu = new Menu(id, productName, price, content);
        }

        return menu;
    }

    public ArrayList<Menu> search(int from, int to) throws Exception {
        ArrayList<Menu> menus = new ArrayList<>();
        String sql = "{call GetMenus(?, ?)}";
        PreparedStatement ps = con.prepareCall(sql);
        ps.setInt(1, from);
        ps.setInt(2, to);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            String id = rs.getString(1);
            String productName = rs.getString(2);
            String price = rs.getString(3);
            String content = rs.getString(4);

            menus.add(new Menu(id, productName, price, content));
        }

        return menus;
    }

    // Utility method
    public String shortenContent(String content) throws Exception {
        /* Specify which content to be shorten, then create a new shorten content */
        if (content.length() > 300) {
            String[] temp = content.split("[ ]+");
            String[] temp2 = new String[40];

            for (int i = 0; i < 40; i++) {
                temp2[i] = temp[i];
                System.out.println("i = " + i + ", temp2 = " + temp2[i]);
            }

            System.out.println("Check substring " + temp2[temp2.length - 1].substring(temp2[temp2.length - 1].length() - 1));

            // After splitted with "white space", there is no white spaces.
            if (temp2[temp2.length - 1].substring(temp2[temp2.length - 1].length() - 1).matches("[^a-zA-Z]")) {
                System.out.println("Inside");
                String t = temp2[temp2.length - 1].substring(0, temp2[temp2.length - 1].length() - 1);
                t = t += "...";
                temp2[temp2.length - 1] = t;
            } else {
                temp2[temp2.length - 1] += "...";
            }

            System.out.println("check " + temp2[temp2.length - 1]);

            // Set content to "" to create a new "content"
            content = "";
            for (String s : temp2) {
                content += " " + s;
            }
            System.out.println("Content = " + content);
        }
        return content;
    }

}
