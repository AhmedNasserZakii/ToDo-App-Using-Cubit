# To-do App

This project is a practice application focusing on state management using Cubit, integrating Firebase Firestore for data management, and implementing the MVVM architecture. The main functionalities include adding, retrieving, and deleting tasks, with additional practice on animations using Hero widgets.

Table of Contents

Introduction
Features
Technologies Used
Installation
Usage
Project Structure
Contributing
License


Introduction
In this project, the primary focus was on learning and practicing:

Cubit state management.
Firebase Firestore integration for CRUD operations.
MVVM architecture implementation.
Hero widget animations.


The application's UI is minimal, with the emphasis being on understanding and implementing state management and data handling techniques.

Features

Add tasks to Firestore.
Retrieve tasks from Firestore.
Delete tasks from Firestore.
Basic animations using Hero widgets.


Technologies Used
Flutter
Cubit (State Management)
Firebase Firestore
MVVM Architecture


Installation


To get started with this project, follow these steps:

1. Clone the repository:
git clone https://github.com/AhmedNasserZakii/ToDo-App-Using-Cubit.git
2. Navigate to the project directory:
cd task3
3. Install dependencies:
flutter pub get
4. Set up Firebase:
Follow the instructions to set up Firebase for your Flutter project: Firebase Setup
Update the google-services.json file for Android and GoogleService-Info.plist for iOS in the respective directories.

Usage
Run the application:
Flutter Run
Adding a Task:
Use the UI to add a new task to the Firestore database.
Retrieving Tasks:
View the list of tasks retrieved from Firestore.
Deleting a Task:
Use the UI to delete a task from the Firestore database.

Project Structure
The project follows the MVVM architecture pattern:
lib/
├── core/
│   └── utils/
├── data/
│   ├── models/
│   └── repositories/
├── ui/
│   ├── screens/
│   └── widgets/
├── cubit/
│   ├── add_task_cubit/
│   └── get_tasks_cubit/
├── main.dart

Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.



