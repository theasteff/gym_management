const API = "http://localhost/gym_management/";

function addMember() {
    let age = parseInt(document.getElementById("Age").value);
    let phone = document.getElementById("Phone").value;

    if (isNaN(age) || age < 1 || age > 120) {
        alert("Age must be a positive number.");
        return;
    }

    if (!/^\d{11}$/.test(phone)){
        alert("Phone number must contain exactly 11 digits.");
        return;
    }
    
    let data = {
        
        MemberID: document.getElementById("MemberID").value, 
        TrainorID: document.getElementById("TrainorID").value,
        FirstName: document.getElementById("FirstName").value,
        LastName: document.getElementById("LastName").value,
        Age: document.getElementById("Age").value,
        PlanID: document.getElementById("PlanID").value,
        Phone: document.getElementById("Phone").value,
        Status: document.getElementById("Status").value
    };

    fetch(API + "add_member.php", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(data)
    })
    .then(res => res.text())
    .then(res => {
        alert(res);
        clearForm(); 
        loadMembers();
        loadTrainers(); 
    })
    .catch(err => console.error(err));
}

function editMember(id, first, last, age, phone) {
    document.getElementById("MemberID").value = id;
    document.getElementById("FirstName").value = first;
    document.getElementById("LastName").value = last;
    document.getElementById("Age").value = age;
    document.getElementById("Phone").value = phone;

    window.currentEditId = id;
}

function updateMember() {
    let age = parseInt(document.getElementById("Age").value);

    if (isNaN(age) || age < 1 || age > 120) {
        alert("Age must be a positive number.");
        return;
    }
    let phone = document.getElementById("Phone").value;

    if (!/^\d{11}$/.test(phone)){
        alert("Phone number must contain exactly 11 digits.");
        return;
    }
    
    let manualId = document.getElementById("MemberID").value;
    let targetId = window.currentEditId || manualId;

    if (!targetId) {
        alert("Please provide a Member ID or click Edit first.");
        return;
    }

    let data = {
        MemberID: targetId,
        TrainorID: document.getElementById("TrainorID").value,
        FirstName: document.getElementById("FirstName").value,
        LastName: document.getElementById("LastName").value,
        Age: document.getElementById("Age").value,
        PlanID: document.getElementById("PlanID").value,
        Phone: document.getElementById("Phone").value,
        Status: document.getElementById("Status").value
    };

    fetch(API + "update_members.php", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(data)
    })
    .then(res => res.text())
    .then(res => {
        alert(res);
        clearForm(); 
        loadMembers();
        loadTrainers(); 
    })
    .catch(err => console.error(err));
}

function loadMembers() {
    fetch(API + "get_members.php")
    .then(res => res.json())
    .then(data => {
        let rows = "";
        data.forEach(m => {
            rows += `
            <tr>
                <td><strong>#${m.MemberID}</strong></td>
                <td>${m.FirstName}</td>
                <td>${m.LastName}</td>
                <td>${m.Age}</td>
                <td>${m.Phone}</td>
                <td style="text-align: center;">
                    <button class="btn btn-primary btn-action" onclick="editMember(${m.MemberID}, '${m.FirstName}', '${m.LastName}', ${m.Age}, '${m.Phone}')">Edit</button>
                    <button class="btn btn-danger btn-action" onclick="deleteMember(${m.MemberID})">Delete</button>
                </td>
            </tr>`;
        });
        document.getElementById("tableData").innerHTML = rows;
    })
    .catch(err => console.error(err));
}

function searchMember() {
    let keyword = document.getElementById("search").value.toLowerCase();

    fetch(API + "get_members.php")
    .then(res => res.json())
    .then(data => {
        let filtered = data.filter(m =>
            m.FirstName.toLowerCase().includes(keyword) ||
            m.LastName.toLowerCase().includes(keyword)
        );

        let rows = "";
        filtered.forEach(m => {
            rows += `
            <tr>
                <td><strong>#${m.MemberID}</strong></td>
                <td>${m.FirstName}</td>
                <td>${m.LastName}</td>
                <td>${m.Age}</td>
                <td>${m.Phone}</td>
                <td style="text-align: center;">
                    <button class="btn btn-primary btn-action" onclick="editMember(${m.MemberID}, '${m.FirstName}', '${m.LastName}', ${m.Age}, '${m.Phone}')">Edit</button>
                    <button class="btn btn-danger btn-action" onclick="deleteMember(${m.MemberID})">Delete</button>
                </td>
            </tr>`;
        });
        document.getElementById("tableData").innerHTML = rows;
    })
    .catch(err => console.error(err));
}

function deleteMember(id) {
    if (!confirm("Delete this member?")) return;

    fetch(API + "delete_member.php", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            MemberID: id
        })
    })
    .then(res => res.text())
    .then(res => {
        alert(res);
        loadMembers();
        loadTrainers();
    })
    .catch(err => console.error(err));
}

function loadTrainers() {
    fetch(API + "get_trainers.php")
    .then(res => res.json())
    .then(data => {
        let rows = "";
        if(data.length === 0) {
            rows = `<tr><td colspan="2" style="text-align:center; color:gray;">No trainers assigned yet.</td></tr>`;
        }
        data.forEach(t => {
            rows += `
            <tr>
                <td><strong>#${t.TrainerID}</strong></td>
                <td>${t.TrainerName}</td>
            </tr>`;
        });
        document.getElementById("trainerTableData").innerHTML = rows;
    })
    .catch(err => console.error("Trainer Load Error:", err));
}

function clearForm() {
    document.getElementById("MemberID").value = "";
    document.getElementById("TrainorID").value = "";
    document.getElementById("FirstName").value = "";
    document.getElementById("LastName").value = "";
    document.getElementById("Age").value = "";
    document.getElementById("PlanID").value = "";
    document.getElementById("Phone").value = "";
    document.getElementById("Status").value = "";
    
    window.currentEditId = null;
}

function switchTab(viewName) {
    document.getElementById("membersViewSection").classList.remove("show-content");
    document.getElementById("trainersViewSection").classList.remove("show-content");
    
    let tabButtons = document.querySelectorAll(".tab-btn");
    tabButtons.forEach(btn => btn.classList.remove("active-tab"));

    if (viewName === 'members') {
        document.getElementById("membersViewSection").classList.add("show-content");
        tabButtons[0].classList.add("active-tab");
    } else if (viewName === 'trainers') {
        document.getElementById("trainersViewSection").classList.add("show-content");
        tabButtons[1].classList.add("active-tab");
    }
}

loadMembers();
loadTrainers();