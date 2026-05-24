<?php
include "db.php";
header("Content-Type: application/json");

$data = json_decode(file_get_contents("php://input"), true);

if (!$data || !isset($data['MemberID'])) {
    http_response_code(400);
    echo json_encode(["status" => "error", "message" => "Invalid or incomplete inputs."]);
    exit;
}

// Convert empty items to null explicitly
$appID = !empty($data['ApplicationID']) ? $data['ApplicationID'] : null;
$trainID = !empty($data['TrainorID']) ? $data['TrainorID'] : null;

// Secure Prepared SQL Template
$sql = "UPDATE members SET 
        ApplicationID = ?, 
        TrainorID = ?, 
        FirstName = ?, 
        LastName = ?, 
        Age = ?, 
        PlanID = ?, 
        Phone = ?, 
        Status = ? 
        WHERE MemberID = ?";

$stmt = $conn->prepare($sql);

if ($stmt) {
    $stmt->bind_param(
        "iissiiisi", 
        $appID, 
        $trainID, 
        $data['FirstName'], 
        $data['LastName'], 
        $data['Age'], 
        $data['PlanID'], 
        $data['Phone'], 
        $data['Status'],
        $data['MemberID']
    );

    if ($stmt->execute()) {
        echo json_encode(["status" => "success", "message" => "Updated successfully"]);
    } else {
        http_response_code(500);
        echo json_encode(["status" => "error", "message" => $stmt->error]);
    }
    $stmt->close();
} else {
    http_response_code(500);
    echo json_encode(["status" => "error", "message" => $conn->error]);
}
?>