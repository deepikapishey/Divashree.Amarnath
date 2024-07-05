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
            min-height: 100vh;
            margin: 0;
            padding: 20px; 
            box-sizing: border-box; 
            flex-direction: column;
        }
        .table-container {
            width: 70%;
            overflow-x: auto;
            max-height: 80vh; 
            margin-bottom: 20px;
        }
        .center-table {
            width: 100%;
            border-collapse: collapse;
            table-layout: fixed; 
            margin-bottom: 10px; 
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
        .expandable {
            display: none;
            padding: 10px; 
            border: 1px solid #ddd; 
            margin-top: 10px; 
        }
    </style>
    <script>
        function toggleDetails(id) {
            var x = document.getElementById(id);
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
        function toggleCert(id, certIndex) {
            var x = document.getElementById(id);
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>
</head>
<body>
    <div class="table-container">
        <%
            String contentPacksData = (String) request.getAttribute("contentPacksData");
            org.json.JSONArray jsonArray = new org.json.JSONArray(contentPacksData);

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
                            if ("signDetails".equals(key)) {
                                
                                org.json.JSONObject signDetails = (org.json.JSONObject) value;
                %>
                <tr>
                    <td><%= key %></td>
                    <td>
                        <button onclick="toggleDetails('signDetails<%= i %>')"> <%= key %></button>
                        <div id="signDetails<%= i %>" class="expandable">
                            <table class="center-table">
                                <tr>
                                    <th>Property</th>
                                    <th>Value</th>
                                </tr>
                                <tr>
                                    <td>exportable</td>
                                    <td><%= signDetails.getBoolean("exportable") %></td>
                                </tr>
                                <tr>
                                    <td>signStatus</td>
                                    <td><%= signDetails.getString("signStatus") %></td>
                                </tr>
                                <tr>
                                    <td>signedBy</td>
                                    <td><%= signDetails.getString("signedBy") %></td>
                                </tr>
                                <tr>
                                    <td>trusted</td>
                                    <td><%= signDetails.getBoolean("trusted") %></td>
                                </tr>
                                <tr>
                                    <td>warnings</td>
                                    <td><%= signDetails.getJSONArray("warnings").toString() %></td>
                                </tr>
                                <%
                                    org.json.JSONArray certsArray = signDetails.getJSONArray("certs");
                                    for (int certIndex = 0; certIndex < certsArray.length(); certIndex++) {
                                        org.json.JSONObject certObj = certsArray.getJSONObject(certIndex);
                                %>
                                <tr>
                                    <td colspan="2">
                                        <button onclick="toggleCert('certs<%= certIndex %>_<%= i %>', <%= certIndex %>)">certs<%= certIndex + 1 %></button>
                                        <div id="certs<%= certIndex %>_<%= i %>" class="expandable">
                                            <table class="center-table">
                                                <tr>
                                                    <th>Property</th>
                                                    <th>Value</th>
                                                </tr>
                                                <tr>
                                                    <td>certDn</td>
                                                    <td><%= certObj.getString("certDn") %></td>
                                                </tr>
                                                <tr>
                                                    <td>certKeystoreEntryAlias</td>
                                                    <td><%= certObj.optString("certKeystoreEntryAlias", "null") %></td>
                                                </tr>
                                                <tr>
                                                    <td>certType</td>
                                                    <td><%= certObj.getString("certType") %></td>
                                                </tr>
                                                <tr>
                                                    <td>supportCodeSign</td>
                                                    <td><%= certObj.getBoolean("supportCodeSign") %></td>
                                                </tr>
                                                <tr>
                                                    <td>validityTimeFrom</td>
                                                    <td><%= certObj.getLong("validityTimeFrom") %></td>
                                                </tr>
                                                <tr>
                                                    <td>validityTimeNotAfter</td>
                                                    <td><%= certObj.getLong("validityTimeNotAfter") %></td>
                                                </tr>
                                                <tr>
                                                    <td>validityTimeNotBefore</td>
                                                    <td><%= certObj.getLong("validityTimeNotBefore") %></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <% } // end certsArray loop %>
                            </table>
                        </div>
                    </td>
                </tr>
                <% } else { %>
                <tr>
                    <td><%= key %></td>
                    <td><%= value %></td>
                </tr>
                <% } %>
                <% } else { %>
                <tr>
                    <td><%= key %></td>
                    <td><%= value %></td>
                </tr>
                <% } %>
                <% } %>
            </tbody>
        </table>
        <% } // end jsonArray loop %>
    </div>
</body>
</html>
