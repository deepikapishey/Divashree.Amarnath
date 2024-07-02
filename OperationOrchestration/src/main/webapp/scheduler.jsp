<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Scheduler</title>
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
                String schedulerData = (String) request.getAttribute("schedulerData");
                org.json.JSONObject json = new org.json.JSONObject(schedulerData);
            %>
            <tr>
                <td>flowScheduleName</td>
                <td><%= json.getString("flowScheduleName") %></td>
            </tr>
            <tr>
                <td>flowUuid</td>
                <td><%= json.getString("flowUuid") %></td>
            </tr>
            <tr>
                <td>startDate</td>
                <td><%= json.getLong("startDate") %></td>
            </tr>
            <tr>
                <td>endDate</td>
                <td><%= json.getLong("endDate") %></td>
            </tr>
        </tbody>
    </table>
</body>
</html>
