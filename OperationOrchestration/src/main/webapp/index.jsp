<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Operations Orchestration Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <style>
        .server-options {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 200px; /* Adjust the height as needed */
        }
        .server-options h2, .server-options button {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="https://upload.wikimedia.org/wikipedia/en/b/b6/Lumen_Technologies_Logo.png" alt="Logo">
        <h1>Operations Orchestration Dashboard</h1>
    </div>
    <div class="container">
        <div class="server-options">
            <h2>Select a Server</h2>
            <button onclick="showOptions('dc2owooappd01.it.savvis.net')">Server 1</button>
            <button onclick="showOptions('dc2owooappd02.it.savvis.net')">Server 2</button>
        </div>
        <div id="options" class="options">
            <h2>Options</h2>
            <ul>
                <li><a href="scheduler">Scheduler</a></li>
                <li><a href="content-packs">Content Packs</a></li>
                <li><a href="users">Users</a></li>
                <li><a href="workers">Workers</a></li>
                <li><a href="roles">Roles</a></li>
            </ul>
        </div>
    </div>
    <script>
        function showOptions(server) {
            document.getElementById('options').style.display = 'block';
        }
    </script>
</body>
</html>
