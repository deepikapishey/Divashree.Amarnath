package com.operationsorchestration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;
import java.nio.file.Files;
import java.nio.file.Paths;

@WebServlet("/content-packs")
public class ContentPacksServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String data = new String(Files.readAllBytes(Paths.get(getServletContext().getRealPath("/WEB-INF/data.json"))));
        JSONObject jsonData = new JSONObject(data);
        JSONObject contentPacksData = jsonData.getJSONObject("contentPacks");
        request.setAttribute("contentPacksData", contentPacksData.toString());
        request.getRequestDispatcher("/content-packs.jsp").forward(request, response);
    }
}
