package com.nf147.ldl.web;

import com.nf147.ldl.dao.BookInMemoryDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BookDel extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        System.out.println("删除的id是："+id);
        new BookInMemoryDAO().delete(id);
        req.getSession().setAttribute("msg","删除成功！");
        resp.sendRedirect("bookList");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] idAll = req.getParameterValues("cboX");
        BookInMemoryDAO dao = new BookInMemoryDAO();
        for (String s : idAll) {
            dao.delete(Integer.parseInt(s));
        }
        req.getSession().setAttribute("msg","删除成功！");
        resp.sendRedirect("bookList");

    }
}
