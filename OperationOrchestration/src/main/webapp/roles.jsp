<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Roles</title>
</head>
<body>
    <table border="1">
        <thead>
            <tr>
                <th>Property</th>
                <th>Value</th>
            </tr>
        </thead>
        <tbody>
            <% 
                String rolesData = (String) request.getAttribute("rolesData");
                org.json.JSONObject json = new org.json.JSONObject(rolesData);
            %>
            <tr>
                <td>Name</td>
                <td><%= json.getString("name") %></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><%= json.getString("description") %></td>
            </tr>
            <tr>
                <td>Permissions</td>
                <td><%= json.getString("permissions") %></td>
            </tr>
        </tbody>
    </table>
</body>
</html>
