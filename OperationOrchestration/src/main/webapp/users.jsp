<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Users</title>
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
                String usersData = (String) request.getAttribute("usersData");
                org.json.JSONObject json = new org.json.JSONObject(usersData);
            %>
            <tr>
                <td>Username</td>
                <td><%= json.getString("username") %></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><%= json.getString("password") %></td>
            </tr>
            <tr>
                <td>Roles</td>
                <td><%= json.getString("roles") %></td>
            </tr>
        </tbody>
    </table>
</body>
</html>
