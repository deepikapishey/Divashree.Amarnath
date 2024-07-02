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

@WebServlet("/roles")
public class RolesServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String data = new String(Files.readAllBytes(Paths.get(getServletContext().getRealPath("/WEB-INF/data.json"))));
        JSONObject jsonData = new JSONObject(data);
        JSONObject rolesData = jsonData.getJSONObject("roles");
        request.setAttribute("rolesData", rolesData.toString());
        request.getRequestDispatcher("/roles.jsp").forward(request, response);
    }
}
