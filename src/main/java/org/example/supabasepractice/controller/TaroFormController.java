package org.example.supabasepractice.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.UUID;

@WebServlet("/")
public class TaroFormController extends Controller{
    @Override
    public void init() throws ServletException {
        log("TaroFormController init");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        log("TaroFormController doGet");
        req.setAttribute("pageTitle", "ArcanaFox: 운명을 읽는 타로");
        req.setAttribute("ogTitle", "ArcanaFox: 운명을 읽는 타로");
        req.setAttribute("ogDescription", "당신의 운명을 읽어드립니다.");
        req.setAttribute("ogImageUrl", "%s/assets/%s".formatted(req.getContextPath(), "taro_fox.jpeg"));
        req.setAttribute("ogPageUrl", req.getContextPath());
        view(req, resp, "form");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String uuid = UUID.randomUUID().toString();


        resp.sendRedirect(req.getContextPath() + "/result/%s".formatted(uuid));    }
}
