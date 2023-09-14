# Note App

## Table of Contents

- [About](#about)
- [Screenshots](#screenshots)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Clone the Repository](#clone-the-repository)
  - [Flutter Package Dependencies](#flutter-package-dependencies)
- [Firebase Setup](#firebase-setup)


## About

<div align="center">
  <img src="img/logo.jpeg" alt="Image Description" width="200">
  
</div>
   Flutter Notes App with Firebase is your go-to for easy note-taking. It lets you log in securely and keeps your notes updated in real-time across all your devices. Creating and managing notes is a breeze. This app combines simplicity with security, making note-taking a smooth and worry-free experience. Try it out now and level up your note-taking game!

## Screenshots

<div style="display: flex; justify-content: space-between;">
   <img src="img/ak1.jpg" width="200">
   <img src="img/ak2.jpg" width="200">
   <img src="img/ak3.jpg" width="200">
   <img src="img/ak4.jpg" width="200">
   <img src="img/ak5.jpg" width="200">
   <img src="img/ak6.jpg" width="200">
   <img src="img/ak7.jpg" width="200">
   <img src="img/ak8.jpg" width="200">
   
</div>

## Prerequisites

Before you begin, make sure you have the following prerequisites:

- [Flutter](https://flutter.dev/) installed on your development environment.

## Getting Started

Follow these steps to create a Flutter Firebase page with Firestore and Email/Password Authentication:

#### Clone the Repository:

1. Clone this repository:

   ```bash
   git clone https://github.com/ABHISHEKKUMAR89207/WeatherApp.git
   ```

#### Flutter Package Dependencies

2. flutter Package Dependencies
   Open project on Vs code / Android Studio and Run this command on terminal
   ```bash
   flutter pub get
   ```

## Firebase Setup

### Flutter Firebase Authentication and Database Setup

This guide will help you set up Firebase Authentication and Firebase Database for your Flutter project. Firebase is a platform that provides backend services such as authentication, real-time databases, and cloud functions.

### Step 1: Set Up Firebase Project

1. Go to the Firebase Console [here](https://console.firebase.google.com/).
2. Click on "Add Project" and follow the setup wizard to create a new Firebase project.
3. Configure the project settings, including the project name and region.
4. Once the project is created, click "Continue."

### Step 2: Add Your App to Firebase

1. In the Firebase Console, select your project.
2. Click on "Add app" and choose the appropriate platform (iOS/Android).
3. Follow the setup instructions for your chosen platform. This includes downloading configuration files (e.g., `google-services.json` for Android or `GoogleService-Info.plist` for iOS) and adding them to your Flutter project later.
4. Complete the setup for both Android and iOS if you plan to support both platforms.

### Step 3: Set Up Firebase Authentication

1. In the Firebase Console, go to the "Authentication" section.
2. Enable the "Email/Password" sign-in method.
3. Configure other authentication settings as needed, such as password reset and email verification.
4. Firebase Authentication is now ready to use in your Flutter app.

### Step 4: Set Up Firebase Realtime Database or Firestore

1. In the Firebase Console, choose the "Database" section.
2. Create a new Firestore database or Realtime Database, depending on your needs.
3. Set up security rules to control access to your database.
4. Firebase Database is now ready to use in your Flutter app.



Happy coding!
