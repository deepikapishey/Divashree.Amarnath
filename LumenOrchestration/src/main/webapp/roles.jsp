<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Roles Data</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="logo">
                <img src="https://upload.wikimedia.org/wikipedia/en/b/b6/Lumen_Technologies_Logo.png" alt="Logo Image">
            </div>
            <div class="title">Operations Orchestration - Configuration Management Tool</div>
        </div>
        <div class="server-status">
            <div class="server" onclick="showMenu('dc2owooappd01.it.savvis.net')">
                <span class="online-dot"></span>
                <span>dc2owooappd01.it.savvis.net</span>
            </div>
            <div class="server" onclick="showMenu('dc2owooappd02.it.savvis.net')">
                <span class="online-dot"></span>
                <span>dc2owooappd02.it.savvis.net</span>
            </div>
        </div>
        <div class="content">
            <div class="menu" id="menu">
                <div class="item" id="scheduler" onclick="showData('scheduler')">Scheduler</div>
                <div class="item" id="content-packs" onclick="showData('content-packs')">Content Packs</div>
                <div class="item" id="users" onclick="showData('users')">Users</div>
                <div class="item" id="workers" onclick="showData('workers')">Workers</div>
                <div class="item" id="roles" onclick="showData('roles')">Roles</div>
            </div>
            <div class="main-content">
                <table id="roles-table">
                    <thead>
                        <tr>
                            <th>Property</th>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="js/script.js"></script>
</body>
</html>