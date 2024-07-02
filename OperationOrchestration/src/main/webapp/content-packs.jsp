<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Content Packs</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .center-table {
            width: 70%;
            border-collapse: collapse;
        }
        .center-table th, .center-table td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>
    <table class="center-table" border="3">
        <thead>
            <tr>
                <th>Property</th>
                <th>Value</th>
            </tr>
        </thead>
        <tbody>
            <% 
                String contentPacksData = (String) request.getAttribute("contentPacksData");
                org.json.JSONObject json = new org.json.JSONObject(contentPacksData);
            %>
            <tr>
                <td>Name</td>
                <td><%= json.getString("name") %></td>
            </tr>
            <tr>
                <td>Version</td>
                <td><%= json.getString("version") %></td>
            </tr>
            <tr>
                <td>Deployment Date</td>
                <td><%= json.getLong("deploymentDate") %></td>
            </tr>
            <tr>
                <td>Deployed By</td>
                <td><%= json.getString("deployedBy") %></td>
            </tr>
        </tbody>
    </table>
</body>
</html>
