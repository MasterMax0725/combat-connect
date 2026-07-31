# Combat Connect Development Standards

Version: 1.0
Status: Active
Last Updated: July 31, 2026

---

# Purpose

This document defines the engineering standards for Combat Connect.

Every developer, contributor, and AI coding assistant (including Cursor AI) must follow these standards to ensure the project remains maintainable, scalable, secure, and production-ready.

---

# Architecture

Combat Connect follows **Feature-First Clean Architecture**.

```
lib/
│
├── app/
├── core/
├── shared/
└── features/
```

Each feature is isolated.

Example:

```
authentication/
│
├── data/
│
├── domain/
│
├── application/
│
└── presentation/
```

No feature may directly depend on another feature.

Communication between features must happen through domain contracts or shared services.

---

# Layer Responsibilities

## Presentation

Responsible only for UI.

Contains:

- Pages
- Widgets
- Dialogs
- Screens
- Layouts

Presentation NEVER contains business logic.

---

## Application

Responsible for application state.

Contains:

- Riverpod Providers
- Controllers
- State Notifiers
- Coordinators

Application communicates with Domain.

Application NEVER talks directly to Firebase.

---

## Domain

Contains business rules.

Contains:

- Entities
- Repository Interfaces
- Use Cases
- Value Objects

Domain MUST NEVER import Flutter.

Domain MUST NEVER import Firebase.

---

## Data

Responsible for external data.

Contains:

- Firebase
- REST APIs
- Local Database
- DTOs
- Repository Implementations

Only Data communicates with Firebase.

---

# State Management

Combat Connect uses:

Riverpod

Rules:

- No setState() for application state.
- Providers live inside Application.
- Widgets consume providers.
- Business logic never lives inside Widgets.

---

# Routing

Combat Connect uses:

GoRouter

Rules:

- All routes defined in app/router.dart
- Feature pages never navigate using Navigator.push()
- Navigation uses GoRouter only

---

# Dependency Injection

Dependencies are injected.

Avoid creating services inside widgets.

Bad:

```
FirebaseAuth.instance
```

inside widgets.

Good:

Widget

↓

Provider

↓

Repository

↓

Datasource

↓

Firebase

---

# Naming Conventions

Classes

PascalCase

Examples:

```
AuthRepository
UserEntity
SplashController
AttendanceService
```

Files

snake_case.dart

Examples:

```
login_page.dart
attendance_repository.dart
auth_provider.dart
```

Variables

camelCase

Examples:

```
currentUser
selectedOrganization
beltRank
```

Constants

camelCase

Examples:

```
defaultTimeout
maxStudents
```

---

# Widget Guidelines

Prefer StatelessWidget.

Use ConsumerWidget only when reading providers.

Avoid deeply nested widgets.

Extract reusable widgets.

Maximum recommended build() length:

100 lines.

---

# File Size

Target:

<300 lines

Maximum:

500 lines

Split large files.

---

# Repository Pattern

Every feature follows:

Repository Interface

↓

Repository Implementation

↓

Datasource

Never skip layers.

---

# Error Handling

Never swallow exceptions.

Use custom exceptions.

Example:

```
AuthenticationException
NetworkException
PermissionException
```

Display user-friendly messages.

Log technical details.

---

# Logging

Use debugPrint()

Never use print()

Production logging should be centralized.

---

# Code Style

Always use trailing commas.

Use const constructors whenever possible.

Prefer final over var.

Prefer composition over inheritance.

Use immutable objects whenever possible.

---

# Folder Rules

Never create random folders.

Every folder must have a responsibility.

Feature structure should remain consistent across all modules.

---

# Git Workflow

Branches

main

Production

develop

Active development

feature/*

New features

bugfix/*

Bug fixes

hotfix/*

Emergency fixes

---

# Commit Format

Examples:

```
feat(authentication): add login page

feat(training): create attendance module

fix(router): resolve splash navigation

refactor(core): simplify logger

docs: update development standards

test(authentication): add repository tests
```

---

# Pull Request Checklist

Before merging:

- flutter analyze
- flutter test
- Application builds
- No debug prints
- No TODOs without issue references
- No unused imports
- No warnings

---

# AI Development Rules

Cursor AI must:

- Modify only requested files.
- Never generate unrelated features.
- Never create duplicate architecture.
- Follow Clean Architecture.
- Respect folder structure.
- Never overwrite working code without approval.

Every AI-generated change must pass:

flutter analyze

flutter test

before commit.

---

# Security

Never hardcode:

- Passwords
- API Keys
- Firebase Secrets
- Tokens

Use environment configuration when applicable.

Validate all user input.

Apply least-privilege access.

---

# Performance

Prefer lazy loading.

Minimize rebuilds.

Avoid unnecessary provider refreshes.

Optimize Firebase reads.

Cache frequently used data.

---

# Documentation

Every major feature must include:

README.md

explaining:

- Purpose
- Architecture
- Dependencies
- Future Improvements

---

# Testing

Every new feature should include:

Unit Tests

Repository Tests

Widget Tests (where applicable)

Critical business logic must always be tested.

---

# Project Philosophy

Combat Connect is built as a commercial Software-as-a-Service platform.

Every architectural decision should prioritize:

- Scalability
- Maintainability
- Testability
- Security
- Developer Experience

Short-term convenience must never compromise long-term quality.

---

# Motto

Build it once.

Build it right.

Scale it forever.