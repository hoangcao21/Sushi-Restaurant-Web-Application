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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Section;

/**
 *
 * @author Hoang Cao
 */
public class SectionDAO {

    Connection con;

    public SectionDAO() throws Exception {

        con = DBContext.getConnection();

    }

    public Section selectSectionById(String id) throws SQLException {
        Section s = null;

        String sql = "SELECT * "
                + "FROM [SushiRestaurant].[dbo].[Section]"
                + "WHERE id = ?";

        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, id);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            String name = rs.getString(2);
            String content = rs.getString(3);
            String image = rs.getString(4);

            s = new Section(id, name, content, image);
        }
        System.out.println("Check DB: " + s.getImage());
        return s;

    }
}
