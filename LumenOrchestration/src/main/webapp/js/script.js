function showMenu(serverName) {
    const menu = document.getElementById('menu');
    menu.innerHTML = `
        <div class="item" id="scheduler" onclick="fetchData('scheduler')">Scheduler</div>
        <div class="item" id="content-packs" onclick="fetchData('content-packs')">Content Packs</div>
        <div class="item" id="users" onclick="fetchData('users')">Users</div>
        <div class="item" id="workers" onclick="fetchData('workers')">Workers</div>
        <div class="item" id="roles" onclick="fetchData('roles')">Roles</div>
    `;
    menu.style.display = 'flex'; // Make the menu visible
}

function fetchData(dataId) {
    const url = `servlets/${dataId}Servlet`;
    
    fetch(url)
        .then(response => response.json())
        .then(data => {
            const tableId = `${dataId}-table`;
            const table = document.getElementById(tableId);
            const tbody = table.querySelector('tbody');
            tbody.innerHTML = ''; 

            for (const key in data) {
                const row = tbody.insertRow();
                const propertyCell = row.insertCell();
                const valueCell = row.insertCell();

                propertyCell.textContent = key;
                valueCell.textContent = data[key];
            }

            table.style.display = 'table'; // Make the table visible
        })
        .catch(error => {
            console.error('Error fetching data:', error);
        });
}