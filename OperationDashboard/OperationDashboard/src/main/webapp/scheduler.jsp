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
            min-height: 100vh;
            margin: 0;
            padding: 20px; 
            box-sizing: border-box; 
        }
        .table-container {
            width: 70%;
            overflow-x: auto;
            max-height: 80vh; 
        }
        .center-table {
            width: 100%;
            border-collapse: collapse;
            table-layout: fixed; 
        }
        .center-table th, .center-table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
            white-space: nowrap; 
            overflow: hidden; 
            text-overflow: ellipsis; 
        }
        .center-table th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="table-container">
        <%
            String schedulerData = (String) request.getAttribute("schedulerData");
            org.json.JSONArray jsonArray = new org.json.JSONArray(schedulerData);

            for (int i = 0; i < jsonArray.length(); i++) {
                org.json.JSONObject json = jsonArray.getJSONObject(i);
        %>
        <table class="center-table">
            <thead>
                <tr>
                    <th>Property</th>
                    <th>Value</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Object keyObj : json.keySet()) {
                        String key = (String) keyObj;
                        Object value = json.get(key);
                        if (value instanceof org.json.JSONObject || value instanceof org.json.JSONArray) {
                            value = value.toString();
                        }
                %>
                <tr>
                    <td><%= key %></td>
                    <td><%= value %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <% } %>
    </div>
</body>
</html>
