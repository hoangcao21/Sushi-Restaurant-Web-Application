/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package paging;

import dao.MenuDAO;
import java.util.ArrayList;
import model.Menu;

/**
 *
 * @author Hoang Cao
 */
public class MenuPaging {

    private int pageSize; // số lượng sản phẩm trên một trang
    private int page; // số trang đang hiển thị
    private ArrayList<Menu> menus;
    private int numPage;

    public MenuPaging() {
        page = 1;
        pageSize = 5;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public ArrayList<Menu> getMenus() throws Exception {
        int from = (page - 1) * pageSize + 1;
        int to = page * pageSize;
        return menus = new MenuDAO().search(from, to);
    }

    public void setMenus(ArrayList<Menu> menus) {
        this.menus = menus;
    }

    public int getNumPage() throws Exception {
        int n = new MenuDAO().selectAllMenus().size();
        System.out.println("Check n = " + n);
        if (n < pageSize || (n % pageSize) != 0) {
            numPage = (n / pageSize) + 1;
        }
        if ((n % pageSize) == 0) {
            numPage = n / pageSize;
        }
        return numPage;
    }

    public void setNumPage(int numPage) {
        this.numPage = numPage;
    }
}
