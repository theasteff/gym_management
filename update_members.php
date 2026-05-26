<?php
include "db.php";

$data = json_decode(file_get_contents("php://input"), true);

if (!isset($data['MemberID']) || trim($data['MemberID']) === '') {
    http_response_code(400);
    echo json_encode(["error" => "Member ID is required for updates."]);
    exit;
}

$requiredFields = ['FirstName', 'LastName', 'Age', 'PlanID', 'Phone', 'Status'];
foreach ($requiredFields as $field) {
    if (!isset($data[$field]) || trim($data[$field]) === '') {
        http_response_code(400); 
        echo json_encode(["error" => "The field '$field' is required."]);
        exit; 
    }
}

$trainorID = !empty($data['TrainorID']) ? $data['TrainorID'] : null;

$sql = "UPDATE members SET 
        TrainorID = ?, FirstName = ?, LastName = ?, Age = ?, PlanID = ?, Phone = ?, Status = ? 
        WHERE MemberID = ?";

$stmt = $conn->prepare($sql);

if ($stmt) {
    $stmt->bind_param(
        "issiiisi", 
        $trainorID, 
        $data['FirstName'], 
        $data['LastName'], 
        $data['Age'], 
        $data['PlanID'], 
        $data['Phone'], 
        $data['Status'],
        $data['MemberID']
    );

    if ($stmt->execute()) {
        http_response_code(200); 
        echo json_encode(["message" => "Updated successfully"]);
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