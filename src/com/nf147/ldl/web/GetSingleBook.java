package com.nf147.ldl.web;

import com.nf147.ldl.dao.BookInMemoryDAO;
import com.nf147.ldl.entity.Book;
import com.nf147.ldl.util.WebUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GetSingleBook extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        WebUtil.setEncoded(req,resp);
        resp.setContentType("application/json;charset=utf-8");
        int id = Integer.parseInt(req.getParameter("id"));
        Book book = new BookInMemoryDAO().getBookById(id);
        System.out.println(id);
        String result = "{\"id\":\""+book.getId()+"\",\"name\":\""+book.getName()+"\",\"author\":\""+book.getAuthor()+"\",\"price\":\""+book.getPrice()+"\",\"press\":\""+book.getPress()+"\"}";
        System.out.println(result);
        resp.getWriter().print(result);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
