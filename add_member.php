<?php
include "db.php";

$data = json_decode(file_get_contents("php://input"), true);

$requiredFields = ['FirstName', 'LastName', 'Age', 'PlanID', 'Phone', 'Status'];

foreach ($requiredFields as $field) {
    if (!isset($data[$field]) || trim($data[$field]) === '') {
        http_response_code(400); 
        echo json_encode(["error" => "The field '$field' is required."]);
        exit; 
    }
}

$applicationID = !empty($data['ApplicationID']) ? $data['ApplicationID'] : null;
$trainorID     = !empty($data['TrainorID'])     ? $data['TrainorID']     : null;
$memberID      = !empty($data['MemberID'])      ? $data['MemberID']      : null;

if ($memberID !== null) {
    $sql = "INSERT INTO members 
            (MemberID, ApplicationID, TrainorID, FirstName, LastName, Age, PlanID, Phone, Status) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
} else {
    $sql = "INSERT INTO members 
            (ApplicationID, TrainorID, FirstName, LastName, Age, PlanID, Phone, Status) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
}

$stmt = $conn->prepare($sql);

if ($stmt) {
    if ($memberID !== null) {
        $stmt->bind_param(
            "iiissiiis", 
            $memberID,
            $applicationID, 
            $trainorID, 
            $data['FirstName'], 
            $data['LastName'], 
            $data['Age'], 
            $data['PlanID'], 
            $data['Phone'], 
            $data['Status']
        );
    } else {
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
    }

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