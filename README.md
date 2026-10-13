# Collectible Items Management System - Backend

REST API backend for the Collectible Items Management System. Built with **Spring Boot 3 (Java 21)**, **Spring Data JPA**, and **H2 In-Memory / MySQL Database**.

---

## 🌟 Features

- **Full REST APIs**: Items, Auctions, Bidding, Multi-seller price comparisons, and Admin management.
- **Embedded H2 Database**: Pre-configured in-memory database with automatic schema generation and seed data.
- **Role-Based Operations**: Pre-configured demo roles for `BUYER`, `SELLER`, and `ADMIN`.
- **CORS Configured**: Ready to connect with frontend on `localhost`, Vercel (`https://*.vercel.app`), or Render.

---

## 🚀 Running Locally

### Prerequisites
- **Java 21+**
- **Maven 3.8+**

### Command
```bash
mvn spring-boot:run
```
- API Base URL: `http://localhost:8080/api`
- H2 Console: `http://localhost:8080/h2-console`
  - JDBC URL: `jdbc:h2:mem:collectibles_db`
  - Username: `sa`
  - Password: *(blank)*

---

## 🔑 Demo Accounts

| Role | Username | Password |
|---|---|---|
| **ADMIN** | `admin` | `admin123` |
| **SELLER** | `vintage_vault` | `seller123` |
| **BUYER** | `collector_dan` | `buyer123` |

---

## 🐳 Docker / Render Deployment

This repository includes a `Dockerfile` ready for deployment on **Render**:
1. Create a **New Web Service** on Render.
2. Select this repository.
3. Choose **Docker** as runtime.
4. Click **Deploy**.
