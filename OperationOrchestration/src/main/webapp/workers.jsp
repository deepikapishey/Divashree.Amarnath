<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Workers</title>
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
