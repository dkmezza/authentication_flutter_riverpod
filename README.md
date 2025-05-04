# Authentication Flutter Riverpod 🔐

A **production-ready Flutter app** using **Riverpod**, **GoRouter**, and **Clean Architecture** to build a modular and scalable authentication system. It integrates with a Spring Boot backend via REST APIs.

---

## 🚀 Features

- 🧾 Login / Register
- 🔐 JWT Authentication
- 🔄 Refresh Token Support
- 👤 View & Update User Profile
- 🔑 Change Password
- 🚪 Logout
- 🧱 Modular Clean Architecture
- 🎨 Custom Onboarding Screens

---

## 🧰 Tech Stack

- **Flutter 3**
- **Riverpod 2.6.1**
- **GoRouter 15.1.1**
- **flutter_svg**
- **Cupertino Icons**
- **Clean Architecture Pattern**

---

## 🗂️ Project Structure
```
lib/
├── core/ # Theme, constants, utils
│ └── theme/
├── features/ # Feature-based modules
│ ├── auth/ # Login, Register, etc.
│ └── onboarding/
│ ├── data/
│ └── presentation/
│ └── widgets/
├── main.dart # App entry point

```

---

## 📦 Backend API Integration

This Flutter app connects to a Spring Boot backend. Here are the available APIs:

| Method | Endpoint                   | Description                     |
|--------|----------------------------|---------------------------------|
| POST   | `/auth/register`           | Register a new user             |
| POST   | `/auth/login`              | Login and receive JWT tokens    |
| POST   | `/auth/logout`             | Logout and invalidate tokens    |
| POST   | `/auth/refresh`            | Get new access token via refresh|
| GET    | `/auth/me`                 | Get current authenticated user  |
| PUT    | `/auth/profile`            | Update user profile             |
| POST   | `/auth/change-password`    | Change user password            |

Make sure your backend is running at `http://localhost:8080/` during development.

---

## 🖼️ Onboarding Screens

Three animated or static onboarding pages to introduce the app:
1. **Welcome to the App**
2. **Track Your Progress**
3. **Stay Connected**

---

## 🔧 Getting Started

### 1. Clone the Repo

```bash
git clone https://github.com/dkmezza/authentication_flutter_riverpod.git
cd authentication_flutter_riverpod
```


### 2. Install Dependencies
  ```flutter pub get```


### 3. Run the App
   ```flutter run```
 Ensure your emulator or physical device is running, and the backend is accessible.


### 📌 To Do:
- [ ]  Implement biometric login
- [ ]  Add persistent token storage (Secure Storage)
- [ ]  Setup CI/CD with GitHub Actions or Codemagic
- [ ]  Dockerize backend for easier integration


## 👨‍💻 Author

**David Mezza** — Full Stack Engineer | Spring Boot Enthusiast  
[GitHub](https://github.com/dkmezza)


### 📄 License
MIT
