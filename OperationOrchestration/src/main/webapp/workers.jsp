<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Workers</title>
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
                String workersData = (String) request.getAttribute("workersData");
                org.json.JSONObject json = new org.json.JSONObject(workersData);
            %>
            <tr>
                <td>Upgrade Status</td>
                <td><%= json.getString("upgradeStatus") %></td>
            </tr>
            <tr>
                <td>Upgrade Version</td>
                <td><%= json.getString("upgradeVersion") %></td>
            </tr>
            <tr>
                <td>UUID</td>
                <td><%= json.getString("uuid") %></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><%= json.getString("description") %></td>
            </tr>
            <tr>
                <td>Host Name</td>
                <td><%= json.getString("hostName") %></td>
            </tr>
        </tbody>
    </table>
</body>
</html>
