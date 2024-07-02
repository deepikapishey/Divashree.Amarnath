<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Users</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        table {
            border: 3px solid black;
            width: 60%;
            text-align: left;
            border-collapse: collapse;
        }
        th, td {
            padding: 15px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <table border="3">
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
