<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.json.JSONArray, org.json.JSONObject" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Roles</title>
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
        .permissions-container {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            gap: 10px;
        }
        .permissions {
            border: 1px solid #ddd;
            padding: 10px;
            width: 300px;
        }
        .show-permissions {
            cursor: pointer;
            color: inherit;
            border: none;
            background-color: #007bff;
            padding: 5px 10px;
            border-radius: 3px;
            color: #fff;
        }
    </style>
    <script>
        function togglePermissions(tableId) {
            var permissions = document.getElementById(tableId + "-permissions");
            if (permissions.style.display === "none") {
                permissions.style.display = "block";
            } else {
                permissions.style.display = "none";
            }
        }
    </script>
</head>
<body>
    <div class="table-container">
        <%
            String rolesData = (String) request.getAttribute("rolesData");
            org.json.JSONArray jsonArray = new org.json.JSONArray(rolesData);

            for (int i = 0; i < jsonArray.length(); i++) {
                org.json.JSONObject role = jsonArray.getJSONObject(i);
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
                    for (Object keyObj : role.keySet()) {
                        String key = (String) keyObj;
                        Object value = role.get(key);
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
                <tr>
                    <td>Permissions</td>
                    <td>
                        <button class="show-permissions" onclick="togglePermissions('role<%= i %>')">Show Permissions</button>
                        <div id="role<%= i %>-permissions" class="permissions" style="display: none;">
                            <h3>Permissions</h3>
                            <%
                                JSONArray permissions = role.getJSONArray("permissions");
                                for (int j = 0; j < permissions.length(); j++) {
                                    String permission = permissions.getString(j);
                            %>
                            <p><%= permission %></p>
                            <%
                                }
                            %>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <% } %>
    </div>
</body>
</html>
