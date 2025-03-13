package org.example.supabasepractice.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/result/*")
public class TaroResultController extends Controller {
    @Override
    public void init() throws ServletException {
        log("TaroResultController Init");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        log("TaroResultController doGet");
        req.setAttribute("pageTitle", "타로 좋아! 정말 좋아!");
        req.setAttribute("ogTitle", "어렸을 때부터 타로를 좋아한 사람이 있었다?");
        req.setAttribute("ogDescription", "타로타로 타로 밀크티!!!");
        req.setAttribute("ogImageUrl", "%s/assets/%s".formatted(req.getContextPath(), "taro_fox.jpeg"));
        req.setAttribute("ogPageUrl", req.getContextPath());

        String uuid = req.getPathInfo().substring(1); // /{uuid} -> / 없애주기 위해서 앞에 1개 없앰
        req.setAttribute("uuid", uuid);
        view(req, resp, "result");
    }

}
