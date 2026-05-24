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

// 3. Detect actual columns in `members` table and insert only those present
$res = $conn->query("SHOW COLUMNS FROM members");
$tableCols = [];
$colTypes = [];
while ($r = $res->fetch_assoc()) {
    $tableCols[] = $r['Field'];
    $colTypes[$r['Field']] = $r['Type'];
}

$allowed = ['ApplicationID','TrainorID','FirstName','LastName','Age','PlanID','Phone','Status'];
$insertCols = [];
$placeholders = [];
$values = [];
$types = '';

foreach ($allowed as $col) {
    if (in_array($col, $tableCols)) {
        $insertCols[] = $col;
        $placeholders[] = '?';

        // choose type based on column type
        $t = strtolower($colTypes[$col]);
        if (strpos($t, 'int') !== false) {
            $types .= 'i';
        } else {
            $types .= 's';
        }

        $values[] = isset($data[$col]) && $data[$col] !== '' ? $data[$col] : null;
    }
}

if (empty($insertCols)) {
    http_response_code(500);
    echo json_encode(["error" => "No matching columns found in members table."]);
    exit;
}

$sql = "INSERT INTO members (" . implode(', ', $insertCols) . ") VALUES (" . implode(', ', $placeholders) . ")";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    http_response_code(500);
    echo json_encode(["error" => $conn->error]);
    exit;
}

// bind params dynamically
$bindParams = [];
$bindParams[] = & $types;
for ($i = 0; $i < count($values); $i++) {
    // ensure each value is a variable (needed for bind_param references)
    $bindParams[] = & $values[$i];
}

call_user_func_array([$stmt, 'bind_param'], $bindParams);

if ($stmt->execute()) {
    http_response_code(201);
    echo json_encode(["message" => "Inserted successfully"]);
} else {
    http_response_code(500);
    echo json_encode(["error" => $stmt->error]);
}

$stmt->close();
?>