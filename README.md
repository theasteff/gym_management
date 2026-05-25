# FITMATE: Gym Member Management System

### Bicol University  
**College of Science**  
**Information Technology Department**  
**Academic Year:** 2025-2026  
**Course Instructor:** Jevah Rea Montas  

---

## 1. Project Overview

The **FITMATE Gym Member Application and Profile Management System** is a digital administrative module designed to streamline gym operations. Developed as an academic project, this system replaces manual paper-based logbooks with a digitized database management module, aiming to improve administrative efficiency, ensure structural data integrity, and reduce data redundancy.

At its core, the module handles essential member-related administrative tasks, including registration, profile updates, real-time roster searching, and record deletion. Through the administrative interface, users can register members, link them to specific personal trainers (`TrainorID`) and membership options (`PlanID`), validate contact and demographic details, and manage active, pending, or expired membership statuses. The system utilizes client-side search filtering to update active member listings dynamically.

---

## 2. Technology Stack

*   **Frontend:** Vanilla JavaScript (ES6+), utilising asynchronous Fetch API operations and dynamic DOM tree generation.
*   **Styling:** Modern Custom CSS3 featuring flexible custom properties (`:root` variables), CSS Grid layout patterns, and responsive transitions.
*   **Backend:** Object-Oriented/Procedural PHP 8.x executing parameterized queries via MySQLi.
*   **Database:** MySQL 8.x database with explicit InnoDB relationship constraints.
*   **Data Serialization:** Native JSON serialization engines and Browser Web APIs.

---

## 3. Database Architecture

The database schema of FITMATE is normalized to 3NF. Below is the relational mapping of the specific tables managed or referenced by this CRUD module:

### Entity-Relationship Diagram (ERD) Subset

```text
                 MEMBERSHIP_PLAN (Parent)
                  ┌───────────────────────┐
                  │ PK │ PlanID           │
                  │    │ PlanName         │
                  │    │ DurationDays     │
                  └───────────┬───────────┘
                              │ 1
                              │
                              │ 1
    MEMBERS (Target Table)    ▼
   ┌────────────────────────────────────────────────────────┐
   │ PK │ MemberID                                          │
   │ FK │ ApplicationID  ───────► (References APPLICATION)  │
   │ FK │ TrainorID      ───────► (References TRAINOR)      │
   │    │ FirstName                                         │
   │    │ LastName                                          │
   │    │ Age                                               │
   │    │ Phone                                             │
   │ FK │ PlanID                                            │
   │    │ Status         (Active, Pending, Expired)         │
   └────────────────────────────────────────────────────────┘
```

### Relational Schema Properties (Data Dictionary)

| Column Name | Data Type | Key Type | Nullability | Description / Formatting |
| :--- | :--- | :--- | :--- | :--- |
| **MemberID** | `INT(11)` | Primary Key | Auto-Increment, Required | Unique numerical identifier |
| **ApplicationID** | `INT(11)` | Foreign Key | Nullable | Links back to original application |
| **TrainorID** | `INT(11)` | Foreign Key | Nullable | Maps the member to their assigned personal trainer |
| **FirstName** | `VARCHAR(100)` | — | Required | First name of the member |
| **LastName** | `VARCHAR(100)` | — | Required | Last name of the member |
| **Age** | `INT(2)` | — | Required | Age of the member (Range: 15 - 99) |
| **Phone** | `VARCHAR(12)` | — | Required | Primary contact phone number (Format: 99999999999) |
| **PlanID** | `INT(3)` | Foreign Key | Required | References subscription plan type |
| **Status** | `VARCHAR(20)` | — | Required | Gym access state (`Active`, `Pending`, `Expired`) |

---

## 4. Module Features

### A. Create (Add Member)
Administrators can add new members by filling out the profile card form. The frontend bundles the input variables into a JSON object and POSTs it asynchronously to the backend.
*   **Form Validation Rules:**
    *   `FirstName` and `LastName` must be non-empty strings.
    *   `Age` must be a positive integer greater than or equal to 15.
    *   `Phone` must be a valid numeric sequence.
    *   `PlanID` is required to associate the member with a billing structure.
    *   `Status` must be selected from the valid list of options (`Active`, `Pending`, `Expired`).
*   **Error & Response Handling:**
    The backend (`add_member.php`) validates payload parameters prior to execution. If any required field is empty, a `400 Bad Request` header is sent along with a JSON error payload:
    ```json
    {"error": "The field 'FirstName' is required."}
    ```
    If successful, the database returns a `201 Created` status code, clears the form inputs, and re-renders the table view.

### B. Read & Live Filtering
The active gym rosters are displayed in an interactive list dynamically generated by JavaScript using templated string interpolation.
*   **Live Filtering:**
    The search bar listens for a key-up event (`onkeyup="searchMember()"`). This pulls the current list of records, filters them on the client side using string matching against the member's first or last name, and updates the DOM immediately without requiring a full page refresh.

### C. Update (Edit Member Info)
Clicking the "Edit" button on a table row captures that record's data payload, populates the form editor fields, and assigns the record's primary key to a global edit state (`window.currentEditId`).
*   **Validation Rules:**
    If an administrator attempts to click "Update Member" without selecting a member first, an alert is triggered: *"Please click Edit first."*
*   **SQL Prepared Parameters:**
    The backend updates values using a prepared SQL template. To maintain referential integrity, blank inputs for optional attributes (such as `ApplicationID` and `TrainorID`) are explicitly converted to SQL `NULL` values:
    ```php
    $appID = !empty($data['ApplicationID']) ? $data['ApplicationID'] : null;
    $trainID = !empty($data['TrainorID']) ? $data['TrainorID'] : null;
    ```

### D. Delete (Remove Member Record)
Removes a member record from the active roster using a parameter-bound delete operation.
*   **Safety Measures:**
    To prevent accidental data loss, the delete action triggers a browser confirmation dialog:
    ```javascript
    if (!confirm("Delete this member?")) return;
    ```
    Upon explicit user confirmation, the application sends a JSON-encoded request payload containing the targeted `MemberID` to the backend. The backend executes a prepared statement:
    ```sql
    DELETE FROM members WHERE MemberID = ?
    ```
    Upon success, the UI alerts the user and refreshes the table to reflect the current state.

---

## 5. Development Challenges and Future Improvements

During the initial development of this system, the team identified several limitations and areas for growth:
*   **Integration and Architecture:** Connecting separate HTML, CSS, JavaScript, and PHP files presented a steep learning curve. The team transitioned from a more complex layout to a streamlined single-table module to ensure a functional core system within the development timeline.
*   **Database Scope:** While the original ERD comprised 9 to 12 tables, the functional CRUD components are currently limited to the `members` table. Expanding the integration to all reference tables remains a priority.
*   **Search Optimization:** The initial search implementation caused performance bottlenecks by sending a database request on every keystroke. This was resolved by using client-side filtering, though future iterations aim to implement server-side debouncing.
*   **User Interface Feedback:** The native browser alert boxes and confirmation modals are functional but basic. Future goals include replacing them with custom, non-blocking in-app toast notifications, loading animations, and more robust backend error-logging.

---

## 6. Project Contributors

### Development & Integration Team
*   **Colina, Trisha Mae M.** – Lead Developer (Delete operations, backend/frontend data flow alignment)
*   **Mayor, Jon Wilfred C.** – Lead Developer (Read operations, frontend table structures, and client-side searching)
*   **Ocfemia, Miko N.** – Lead Developer (CRUD implementation, database schema expansion, and PHP scripting)
*   **Pura, Althea Stephanie P.** – Lead Developer (UI styling coordination, page layout development, and file structuring)

### Original Database Design Schema By
*   **Malate, Jessa N.**
*   **Napolis, Ma. Carmilla N.**
