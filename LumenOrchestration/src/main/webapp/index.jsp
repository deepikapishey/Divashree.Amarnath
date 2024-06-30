<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Operations Orchestration</title>
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
                </div>
            <div class="main-content">
                <table id="scheduler-table" style="display:none;">
                    <thead>
                        <tr>
                            <th>Property</th>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        </tbody>
                </table>
                <table id="content-packs-table" style="display:none;">
                    <thead>
                        <tr>
                            <th>Property</th>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        </tbody>
                </table>
                <table id="users-table" style="display:none;">
                    <thead>
                        <tr>
                            <th>Property</th>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        </tbody>
                </table>
                <table id="workers-table" style="display:none;">
                    <thead>
                        <tr>
                            <th>Property</th>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        </tbody>
                </table>
                <table id="roles-table" style="display:none;">
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