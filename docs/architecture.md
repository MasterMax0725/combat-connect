# Combat Connect Architecture

Version: 1.0

Status: Draft

Last Updated: July 31, 2026

Owner: Combat Connect Engineering

---

# Vision

Combat Connect is a commercial Software-as-a-Service (SaaS) platform built for martial arts organizations.

The platform supports organizations of all sizes, from a single school to multi-branch academies.

It is martial-arts agnostic and is designed to support:

- Taekwondo
- Karate
- Judo
- Brazilian Jiu-Jitsu
- Muay Thai
- Boxing
- Wrestling
- MMA
- Future combat sports

---

# Core Principles

## Multi-Tenant

Every customer is completely isolated.

Each organization owns its own:

- Members
- Branches
- Programs
- Students
- Staff
- Billing
- Reports
- Certificates
- Inventory
- Attendance Records

No organization can access another organization's data.

---



## Role-Based Access Control (RBAC)

Permissions are assigned through Roles.

A user may have multiple roles simultaneously.

Example:

- Owner
- Master
- Instructor

One account.

Multiple permissions.

Permissions are always granted through roles rather than directly to users.

---



## Configuration over Customization

Organizations configure their own:

- Rank Systems
- Programs
- Membership Types
- Billing Rules
- Certificates
- Attendance Policies
- Grading Requirements

Business rules should never be hardcoded whenever possible.

---



## Auditability

Every important business action should create an audit log.

Examples:

- Student promoted
- Attendance edited
- Certificate generated
- Payment received
- Inventory adjusted
- User role changed
- Organization settings modified

Each audit record should contain:

- User
- Organization
- Branch
- Timestamp
- Previous Value
- New Value
- Device Information (future)

---



## Offline First

The application should continue functioning even without internet connectivity.

Examples:

- Attendance
- Promotions
- Student registration
- Class management

Changes will synchronize automatically when connectivity returns.

---



## API First

Business logic should never depend on Flutter.

Future clients should include:

- Flutter Mobile
- Flutter Web
- Desktop
- Public Verification Website
- Parent Portal
- Coach Portal
- REST API
- GraphQL API

---



# System Architecture

```
Combat Connect Platform

        │

 ┌──────┴──────┐

 Mobile     Future Clients

        │

Application Layer

        │

Feature Layer

        │

Domain Layer

        │

Data Layer

        │

Storage Layer
```

---



# Folder Structure

```
lib/

app/
core/
shared/
features/
```

---



# Feature Organization

```
features/

authentication/

organization/

training/

commerce/

communication/

reporting/

settings/
```

Training contains:

```
students
classes
attendance
promotions
certificates
tournaments
```

Commerce contains:

```
billing
inventory
subscriptions
pos
```

Communication contains:

```
announcements
notifications
messaging
email
sms
```

---



# Design Philosophy

Combat Connect should always be:

- Simple
- Scalable
- Secure
- Offline Ready
- API First
- Testable
- Maintainable
- Modular

---



# Development Workflow

Requirement

↓

Architecture

↓

Documentation

↓

Implementation

↓

Code Review

↓

Testing

↓

Git Commit

↓

Merge

No code is merged without review.

---



# Git Strategy



## main

Production-ready releases.

## develop

Active development.

## feature/*

Individual features.

Examples:

feature/authentication

feature/attendance

feature/promotions

feature/billing

feature/inventory

---



# Coding Philosophy

Business logic belongs inside Features.

Reusable utilities belong inside Core.

Reusable UI belongs inside Shared.

Features should be loosely coupled.

Avoid duplicate code.

Favor composition over inheritance.

Write readable code before clever code.

---



# Security Principles

Every request must validate:

- Authentication
- Organization
- Branch
- Permissions

No client should be trusted.

Authorization must always be verified by the backend.

---



# Non Goals

Combat Connect is NOT intended to become:

- A Learning Management System (LMS)
- A General School Information System
- A Social Media Platform
- A Video Streaming Platform

The platform remains focused on operating martial arts organizations.

---



# Long-Term Goal

Combat Connect will become the operating system for martial arts organizations.

Future ecosystem:

- Mobile App
- Web Admin Portal
- Parent Portal
- Coach Portal
- Public Certificate Verification
- Tournament Management
- Marketplace
- API Integrations
- AI Coaching
- AI Analytics

One Platform.

Every Dojo.