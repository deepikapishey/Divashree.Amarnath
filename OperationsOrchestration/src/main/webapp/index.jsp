<!DOCTYPE html>
<html>
<head>
    <title>Operations Orchestration - Configuration Management Tool</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="header">
        <img src="https://upload.wikimedia.org/wikipedia/en/b/b6/Lumen_Technologies_Logo.png" alt="Lumen Logo" class="logo">
        <h1>Operations Orchestration - Configuration Management Tool</h1>
    </div>
    <div class="server-options">
        <button onclick="showMenu()">dc2owooappd01.it.savvis.net</button>
        <button onclick="showMenu()">dc2owooappd02.it.savvis.net</button>
    </div>
    <div class="container">
        <div class="menu" id="menu" style="display:none;">
            <button onclick="loadPage('scheduler.jsp')">Scheduler</button>
            <button onclick="loadPage('content_packs.jsp')">Content Packs</button>
            <button onclick="loadPage('users.jsp')">Users</button>
            <button onclick="loadPage('workers.jsp')">Workers</button>
            <button onclick="loadPage('roles.jsp')">Roles</button>
        </div>
        <div class="content" id="content">
            <!-- Content will be loaded here -->
        </div>
    </div>
    <script>
        function showMenu() {
            document.getElementById('menu').style.display = 'block';
        }

        function loadPage(page) {
            fetch(page)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('content').innerHTML = data;
                });
        }
    </script>
</body>
</html>
