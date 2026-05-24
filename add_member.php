<?php
include "db.php";

// Get the raw JSON input
$data = json_decode(file_get_contents("php://input"), true);

// 1. Define required fields
$requiredFields = ['FirstName', 'LastName', 'Age', 'PlanID', 'Phone', 'Status'];

// 2. Validate required fields
foreach ($requiredFields as $field) {
    if (!isset($data[$field]) || trim($data[$field]) === '') {
        http_response_code(400); 
        echo json_encode(["error" => "The field '$field' is required."]);
        exit; 
    }
}

// 3. Setup optional fields 
$applicationID = !empty($data['ApplicationID']) ? $data['ApplicationID'] : null;
$trainorID     = !empty($data['TrainorID'])     ? $data['TrainorID']     : null;

// 4. Target only TrainorID to avoid schema confusion
$sql = "INSERT INTO members 
        (ApplicationID, TrainorID, FirstName, LastName, Age, PlanID, Phone, Status) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

$stmt = $conn->prepare($sql);

if ($stmt) {
    $stmt->bind_param(
        "iissiiis", 
        $applicationID, 
        $trainorID, 
        $data['FirstName'], 
        $data['LastName'], 
        $data['Age'], 
        $data['PlanID'], 
        $data['Phone'], 
        $data['Status']
    );

    if ($stmt->execute()) {
        http_response_code(201); 
        echo json_encode(["message" => "Inserted successfully"]);
    } else {
        http_response_code(500); 
        echo json_encode(["error" => $stmt->error]);
    }
    
    $stmt->close();
} else {
    http_response_code(500);
    echo json_encode(["error" => $conn->error]);
}
?>