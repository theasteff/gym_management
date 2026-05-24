const API = "http://localhost/gym_management/api/";

// =====================
// ADD MEMBER
// =====================
function addMember() {
    let data = {
        ApplicationID: document.getElementById("ApplicationID").value,
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
        showServerResponse(res);
        clearForm(); // <--- Automatically clears the input text fields here
        loadMembers();
    })
    .catch(err => console.error(err));
}

// =====================
// EDIT MEMBER
// =====================
function editMember(id, first, last, age, phone) {
    document.getElementById("FirstName").value = first;
    document.getElementById("LastName").value = last;
    document.getElementById("Age").value = age;
    document.getElementById("Phone").value = phone;

    window.currentEditId = id;
}

// =====================
// UPDATE MEMBER
// =====================
function updateMember() {
    if (!window.currentEditId) {
        alert("Please click Edit first.");
        return;
    }

    let data = {
        MemberID: window.currentEditId,
        ApplicationID: document.getElementById("ApplicationID").value,
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
        showServerResponse(res);
        clearForm(); // <--- Automatically clears the input text fields here too
        loadMembers();
    })
    .catch(err => console.error(err));
}

// =====================
// LOAD MEMBERS
// =====================
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

// =====================
// SEARCH MEMBER
// =====================
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

// =====================
// DELETE MEMBER
// =====================
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
    })
    .catch(err => console.error(err));
}

function showServerResponse(res) {
    try {
        const data = JSON.parse(res);
        if (data.error) {
            alert(data.error);
            return;
        }
        if (data.message) {
            alert(data.message);
            return;
        }
    } catch (e) {
        // If parsing fails, fall back to raw response text.
    }
    alert(res);
}

// =====================
// AUTOMATIC RESET FUNCTION
// =====================
function clearForm() {
    document.getElementById("ApplicationID").value = "";
    document.getElementById("TrainorID").value = "";
    document.getElementById("FirstName").value = "";
    document.getElementById("LastName").value = "";
    document.getElementById("Age").value = "";
    document.getElementById("PlanID").value = "";
    document.getElementById("Phone").value = "";
    document.getElementById("Status").value = "";
    
    window.currentEditId = null; // Clears active edit session variable
}

// =====================
// INITIAL LOAD
// =====================
loadMembers();