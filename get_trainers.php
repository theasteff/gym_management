<?php
include "db.php";
header("Content-Type: application/json");

$sql = "SELECT TrainerID, CONCAT(FirstName, ' ', LastName) AS TrainerName FROM trainer ORDER BY TrainerID ASC";

$result = $conn->query($sql);
$trainers = [];

if ($result) {
    while ($row = $result->fetch_assoc()) {
        $trainers[] = $row;
    }
    echo json_encode($trainers);
} else {
    http_response_code(500);
    echo json_encode(["status" => "error", "message" => $conn->error]);
}
?>