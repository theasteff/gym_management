<?php
include "db.php";
header("Content-Type: application/json");

$data = json_decode(file_get_contents("php://input"), true);

if (!isset($data['MemberID'])) {
    http_response_code(400);
    echo json_encode(["status" => "error", "message" => "Missing Member ID"]);
    exit;
}

$sql = "DELETE FROM members WHERE MemberID = ?";
$stmt = $conn->prepare($sql);

if ($stmt) {
    $stmt->bind_param("i", $data['MemberID']);
    if ($stmt->execute()) {
        echo json_encode(["status" => "success", "message" => "Member deleted successfully"]);
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