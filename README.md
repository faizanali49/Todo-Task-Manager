# 📋 Todo Task Manager - Flutter Mobile Application

[![Flutter](https://img.shields.io/badge/Flutter-2.5%2B-blue?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-2.14%2B-blue?logo=dart)](https://dart.dev)
[![Riverpod](https://img.shields.io/badge/Riverpod-2.6.1-green)](https://pub.dev/packages/flutter_riverpod)
[![GoRouter](https://img.shields.io/badge/GoRouter-16.1.0-orange)](https://pub.dev/packages/go_router)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

*App Interface Preview*

---












## 🔍 Overview

**Todo Task Manager** is a modern, feature-rich mobile application built with **Flutter** that helps users organize tasks efficiently. The app provides a clean UI for creating, editing, searching, and managing to-do notes with advanced features like priority coloring, date scheduling, hashtags, and status filtering.

This project demonstrates best practices in **Flutter development**, including **state management with Riverpod**, **navigation with GoRouter**, and **modular architecture** for scalable code organization.

---

## ✨ Key Features

### 🗂️ Task Management
- Create, edit, and delete tasks with rich metadata
- Add detailed descriptions and titles
- Assign due dates for task scheduling
- Use hashtags for categorization and quick filtering

### 🎨 Priority & Status System
- Visual priority indicators via color coding:
  - 🔴 Red: High Priority
  - 🟢 Green: Medium Priority
  - 🟡 Yellow: Low Priority
- Task status tracking:
  - `Pending`
  - `Completed`
  - `Expired` (auto-detected based on due date)

### 🔍 Smart Search & Filtering
- Real-time search by title or hashtag
- Filter tasks by status:
  - All
  - Pending
  - Completed
  - Expired

### 🌓 Dark & Light Mode
- Toggle between themes via switch in the app bar
- Automatic theme persistence using `ThemeProvider`
- Smooth transition between modes without page reload

### 🧭 Intuitive Navigation
- **GoRouter** powered navigation system
- Deep linking support
- Seamless transitions between pages (Home, Add Note, Edit Note)

---

## 🖼️ App Screenshots

### 📝 Write Notes Screen
<img src="https://github.com/user-attachments/assets/2b460785-7242-46e5-b795-63ba8ecb9ac2" alt="Todo App - Add Task" width="300" style="margin: 10px;">
*Create new tasks with title, description, due date, priority color, and hashtags*

### ✏️ Edit Note Screen
 <img src="https://github.com/user-attachments/assets/19dcde96-3591-4a2b-95d0-5483c2e786e4" alt="Todo App - Edit Task" width="300" style="margin: 10px;">
*Modify existing tasks with full editing capabilities*

### 🗓️ Task Manager Dashboard
<img src="https://github.com/user-attachments/assets/e9d4d32b-3cee-4ebe-bfd2-1f86cc22766c" alt="Todo App - Filter: All Tasks" width="300" style="margin: 10px;">
*View all tasks with status indicators and priority colors*

### 🔍 Filtered Views
<img src="https://github.com/user-attachments/assets/61b5a3ff-55d2-4316-bede-aa58f10e0e2b" alt="Todo App - Filter: Completed" width="300" style="margin: 10px;">
*Filter tasks by status: Completed*
<img src="https://github.com/user-attachments/assets/23f7f555-952f-49f9-8603-9f50c9467ae1" alt="Todo App - Filter: Expired" width="300" style="margin: 10px;">
*Filter tasks by status: Expired*

---

## 🛠️ Technology Stack

| Component | Technology | Purpose |
|---------|------------|--------|
| **Framework** | Flutter 3.0+ | Cross-platform UI development |
| **State Management** | Riverpod 2.6.1 | Efficient, scalable state handling |
| **Navigation** | GoRouter 16.1.0 | Declarative routing with path parameters |
| **UI Design** | Material Design | Consistent, modern interface |
| **Backend** | HTTP Client | Future integration with cloud storage |
| **Themes** | Custom Theme Manager | Dynamic light/dark mode switching |

---

## 🚀 Architecture Highlights

### Modular Structure
```
lib/
├── main.dart                     # App entry point
├── providers/
│   ├── notes/
│   │   └── todo_provider.dart    # State provider for todos
│   └── style/
│       └── theme_provider.dart   # Theme management
├── views/
│   ├── widgets/
│   │   └── model.dart            # Todo data model
│   ├── main_screen.dart          # Main dashboard
│   └── add_todo.dart             # Add/Edit note screen
├── routes.dart                   # Route configuration
└── pubspec.yaml                  # Dependencies
```

### Navigation System
- **GoRouter** enables declarative route definition
- Path parameters and named routes for deep linking
- Smooth page transitions with `MaterialPage` builders
- Back stack management and deep linking capabilities

### State Management
- **Riverpod** provides dependency injection and scoped state
- Centralized theme management across the app
- Provider-based data flow for consistent updates

---

## 🔄 Development Workflow

1. **Setup**
```bash
flutter pub get
```

2. **Run App**
```bash
flutter run
```

3. **Test on Devices**
- Android: `flutter run -d <device_id>`
- iOS: `flutter run -d <simulator_name>`

4. **Build Release**
```bash
flutter build apk --release
```

---
---

## 🙌 Built by

<p align="center">
  <a href="https://github.com/faizanali49">
    <img src="https://avatars.githubusercontent.com/u/YOUR_ID?v=4" width="80" height="80" alt="Faizan Ali" style="border-radius: 50%;">
  </a>
  <br>
  <strong>Faizan Ali</strong><br>
  <em>Flutter Developer | Open Source Contributor</em>
  <br>
  <a href="https://github.com/faizanali49">
    <img src="https://img.shields.io/badge/GitHub-Profile-blue?style=for-the-badge&logo=github" alt="GitHub Profile">
  </a>
  <a href="mailto:faizanali49@example.com">
    <img src="https://img.shields.io/badge/Email-Contact%20Me-red?style=for-the-badge&logo=gmail" alt="Email Me">
  </a>
</p>
