# Combat Connect Coding Standards

Version: 1.0

Status: Draft

Last Updated: July 31, 2026

Owner: Engineering Team

---

# Purpose

This document defines the coding standards used throughout Combat Connect.

Following these standards ensures that the codebase remains readable, maintainable, scalable, and consistent.

---

# General Principles

- Write readable code before clever code.
- Prefer simplicity over complexity.
- Avoid duplicate code.
- Small functions are preferred over large functions.
- Every file should have a single responsibility.

---

# Naming Conventions

## Files

Use snake_case.

Examples:

student_repository.dart

attendance_service.dart

promotion_controller.dart

---

## Classes

Use PascalCase.

Examples:

Student

AttendanceRepository

PromotionService

---

## Variables

Use camelCase.

Examples:

studentName

currentRank

attendanceCount

---

## Constants

Use lowerCamelCase with the `const` keyword.

Examples:

const maxStudents = 100;

const defaultTheme = "light";

---

# Folder Structure

Business features belong inside:

```
lib/features/
```

Reusable UI belongs inside:

```
lib/shared/
```

Application-wide services belong inside:

```
lib/core/
```

---

# Architecture

Every feature should eventually follow this structure:

```
feature/

data/

domain/

presentation/
```

No feature should directly depend on another feature.

---

# Widgets

Widgets should be:

- Small
- Reusable
- Easy to test

Avoid widgets longer than approximately 250 lines.

Split large widgets into smaller components.

---

# Business Logic

Business logic must never live inside UI widgets.

Business rules belong inside the domain layer or service layer.

---

# Error Handling

Never silently ignore exceptions.

Errors should:

- Be logged
- Display a user-friendly message
- Preserve debugging information

---

# Git

Use Conventional Commits.

Examples:

feat(authentication): add login screen

feat(training): add attendance feature

fix(promotions): correct rank validation

docs(architecture): update system architecture

refactor(core): simplify routing

---

# Pull Requests

Every Pull Request should:

- Compile successfully
- Pass analysis
- Be reviewed
- Include documentation updates if architecture changes

---

# Documentation

Major architectural decisions must be documented.

README files should exist inside every major feature.

---

# Code Review Checklist

Before merging:

- Code compiles
- No analyzer warnings
- No duplicate logic
- Naming follows conventions
- Documentation updated
- Tests pass (when available)

---

# Philosophy

Good software is built one clean decision at a time.

Consistency is more valuable than cleverness.

Readable code is professional code.