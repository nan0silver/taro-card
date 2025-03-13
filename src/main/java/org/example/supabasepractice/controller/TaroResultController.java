package org.example.supabasepractice.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/result/*")
public class TaroResultController extends Controller{
    @Override
    public void init() throws ServletException {
        log("TaroResultController init");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        log("TaroResultController doGet");
        String uuid = req.getPathInfo().substring(1);
        req.setAttribute("uuid", uuid);
        view(req, resp, "result");
    }
}
