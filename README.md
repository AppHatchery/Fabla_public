# Fabla
Fabla is a comprehensive mobile application designed to facilitate audio diary recording for research. The app provides a secure and user-friendly platform for recording, storing, and managing audio diaries, with features including:

- Local and cloud-based storage options
- Secure authentication and data protection
- Intuitive user interface for recording and managing audio entries
- Offline functionality with automatic sync capabilities
- Research-grade data collection and management

The application is built using Flutter and Dart, and uses Firebase for cloud storage.

This project is co-developed with Dr. Deanna Kaplan at the Emory School of Medicine.

## Acknowledgments

Supported by the National Center for Advancing Translational Sciences of the National Institutes of Health under Award
Number UL1TR002378. The content is solely the responsibility of the authors and does not necessarily represent the
official views of the National Institutes of Health.

## Table of Contents
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Project Structure](#project-structure)
    - [Architecture](#architecture)
      - [Core](#core)
        - [Error](#error)
        - [Network](#network)
        - [Use Cases](#use-cases)
      - [Data Layer](#data-layer)
        - [Data Models](#data-models)
      - [Domain Layer](#domain-layer)
        - [Entities](#entities)
        - [Repositories](#repositories)
      - [Presentation Layer](#presentation-layer)
        - [Cubit/Bloc](#cubitbloc)
        - [Pages](#pages)
        - [Widgets](#widgets)
      - [Services](#services)

# Getting Started

## Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio) or [Xcode](https://developer.apple.com/xcode/)
- [Android Emulator](https://developer.android.com/studio/run/emulator) or [iOS Simulator](https://developer.apple.com/documentation/xcode/running_your_app_in_the_simulator_or_on_a_device)
- [Git](https://git-scm.com/downloads)

## Installation
1. Clone the repository
```
git clone
```
2. Install dependencies
```
flutter pub get
```
(only for iOS)
```
pod install
```
3. Install the database
```
dart run build_runner build
```
4. Run the application
```
flutter run
```

## Project Structure
The project is structured as follows:
```
lib
├───core
│   ├───error
│   ├───network
│   ├───usecases
│   ├───utils
├───screens
│   ├───home
│       ├───data
│       ├───domain
│           ├───entities
│           ├───repositories
│       ├───presentation
│           ├───cubit/bloc
│           ├───pages
│           ├───widgets
│   ├───diary
│   ├───settings
├───services
├───theme
    ├───components
```

### Architecture
The application uses the Clean Architecture pattern, with the following layers:

#### Core
This layer contains the most fundamental elements of the application. It includes common utilities, interfaces, and abstractions that are not specific to any particular feature.

##### Error
Handling and categorizing errors or exceptions.

##### Network
Defining networking-related abstractions.

##### Use Cases
Interfaces for use cases that the domain layer can implement.

#### Data Layer
This is the layer responsible for handling data sources, external services, and data models specific to a screen.

##### Data Models
This layer contains the data models for a screen.

#### Domain Layer
This layer contains the core business logic and entities of the application.

##### Entities
Objects that represent business entities and hold essential data and behavior.

##### Repositories
Interfaces that define the contract for interacting with data sources in the data layer.

#### Presentation Layer
This is the user interface layer responsible for rendering the UI and handling user interactions.

##### Cubit/Bloc
The Cubit/Bloc layer is responsible for handling state management and business logic for a screen.

##### Pages
The Pages layer is responsible for rendering the UI for a screen.

##### Widgets
The Widgets layer is responsible for rendering the UI components for a screen.


#### Services
This layer contains the services that the application uses. for example, the notification service.
