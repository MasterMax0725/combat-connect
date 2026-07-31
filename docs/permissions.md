# Combat Connect Permissions

Version: 1.0

Status: Draft

Last Updated: July 31, 2026

Owner: Security & Engineering

---

# Overview

Combat Connect uses Role-Based Access Control (RBAC).

A user may have multiple roles.

Example:

Owner + Master

Master + Instructor

Owner + Instructor

Permissions are determined by the combined roles assigned to the user.

---

# Roles

## Owner

The highest authority within an organization.

Responsible for:

- Organization Management
- Subscription
- Billing
- Staff Management
- Branch Management
- Reports

---

## Master

Technical leader of the organization.

Responsible for:

- Student Promotions
- Belt Examinations
- Certificates
- Attendance
- Class Management
- Student Evaluation

A Master may also teach classes.

---

## Instructor

Responsible for daily instruction.

Can:

- View Assigned Classes
- View Students
- Take Attendance
- Record Class Notes

Cannot:

- Promote Students
- Issue Certificates
- Change Organization Settings

---

## Parent

Can:

- View Child Profile
- View Attendance
- View Certificates
- View Payments
- Receive Announcements

Cannot modify organization data.

---

## Student

Can:

- View Own Profile
- View Attendance
- View Rank
- View Certificates
- View Payments

Cannot modify organization data.

---

# Permission Matrix

| Permission | Owner | Master | Instructor | Parent | Student |
|------------|:-----:|:------:|:----------:|:------:|:-------:|
| View Students | ✅ | ✅ | ✅ | ❌ | ❌ |
| Add Students | ✅ | ✅ | ❌ | ❌ | ❌ |
| Edit Students | ✅ | ✅ | ❌ | ❌ | ❌ |
| Archive Students | ✅ | ✅ | ❌ | ❌ | ❌ |
| Take Attendance | ✅ | ✅ | ✅ | ❌ | ❌ |
| Create Classes | ✅ | ✅ | ❌ | ❌ | ❌ |
| Promote Students | ✅ | ✅ | ❌ | ❌ | ❌ |
| Issue Certificates | ✅ | ✅ | ❌ | ❌ | ❌ |
| Manage Billing | ✅ | Optional | ❌ | ❌ | ❌ |
| Manage Inventory | ✅ | Optional | ❌ | ❌ | ❌ |
| Manage Organization | ✅ | Optional | ❌ | ❌ | ❌ |
| Manage Staff | ✅ | Optional | ❌ | ❌ | ❌ |
| View Reports | ✅ | ✅ | Limited | ❌ | ❌ |
| Manage Roles | ✅ | ❌ | ❌ | ❌ | ❌ |
| Manage Subscription | ✅ | ❌ | ❌ | ❌ | ❌ |

---

# Design Principles

- Roles determine permissions.
- Users may have multiple roles.
- Permissions are additive.
- Deny by default.
- Never hardcode permissions into the UI.
- The backend must always enforce authorization.

---

# Future Roles

The system should support adding roles without changing application code.

Examples:

- Tournament Director
- Referee
- Cashier
- Receptionist
- Coach
- Medical Staff
- Auditor

The permission engine should be fully configurable.
