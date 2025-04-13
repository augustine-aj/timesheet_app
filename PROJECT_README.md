## 📁 Project Architecture

```bash

project_root/
├── lib/
│   ├── core/
│   │   ├── constants/
│   │   │   ├── app_strings.dart
│   │   │   ├── app_colors.dart
│   │   │   ├── app_styles.dart
│   │   │   ├── app_assets.dart
│   │   │   └── api_constants.dart
│   │   ├── error/
│   │   │   ├── exceptions.dart
│   │   │   ├── failures.dart
│   │   │   └── error_messages.dart
│   │   ├── network/
│   │   │   ├── network_info.dart
│   │   │   └── http_client.dart
│   │   └── utils/
│   │       ├── validators.dart
│   │       ├── date_utils.dart
│   │       └── logger.dart
│
│   ├── features/
│   │   ├── auth/
│   │   │   ├── data/
│   │   │   │   ├── models/user_model.dart
│   │   │   │   ├── models/login_request.dart
│   │   │   │   ├── models/login_response.dart
│   │   │   │   ├── data_sources/auth_remote_data_source.dart
│   │   │   │   └── repositories/auth_repository_impl.dart
│   │   │   ├── domain/
│   │   │   │   ├── entities/user_entity.dart
│   │   │   │   ├── repositories/auth_repository.dart
│   │   │   │   ├── usecases/login_user_usecase.dart
│   │   │   │   ├── usecases/logout_usecase.dart
│   │   │   │   └── usecases/forgot_password_usecase.dart
│   │   │   ├── presentation/
│   │   │   │   ├── bloc/auth_bloc.dart
│   │   │   │   ├── bloc/auth_event.dart
│   │   │   │   ├── bloc/auth_state.dart
│   │   │   │   ├── pages/login_page.dart
│   │   │   │   ├── pages/forgot_password_page.dart
│   │   │   │   ├── pages/splash_page.dart
│   │   │   │   ├── widgets/login_form.dart
│   │   │   │   └── widgets/auth_button.dart
│   │   │   └── auth.dart
│   │   │
│   │   ├── timesheet/
│   │   │   ├── data/
│   │   │   │   ├── models/timesheet_model.dart
│   │   │   │   ├── models/dropdown_model.dart
│   │   │   │   ├── data_sources/timesheet_remote_data_source.dart
│   │   │   │   └── repositories/timesheet_repository_impl.dart
│   │   │   ├── domain/
│   │   │   │   ├── entities/timesheet_entity.dart
│   │   │   │   ├── repositories/timesheet_repository.dart
│   │   │   │   ├── usecases/submit_timesheet_usecase.dart
│   │   │   │   ├── usecases/fetch_dropdown_usecase.dart
│   │   │   │   └── usecases/fetch_timesheet_list_usecase.dart
│   │   │   ├── presentation/
│   │   │   │   ├── bloc/timesheet_bloc.dart
│   │   │   │   ├── bloc/timesheet_event.dart
│   │   │   │   ├── bloc/timesheet_state.dart
│   │   │   │   ├── pages/timesheet_page.dart
│   │   │   │   ├── pages/timesheet_detail_page.dart
│   │   │   │   ├── widgets/timesheet_form.dart
│   │   │   │   ├── widgets/project_dropdown.dart
│   │   │   │   └── widgets/task_category_toggle.dart
│   │   │   └── timesheet.dart
│
│   ├── services/
│   │   ├── api_service.dart
│   │   ├── auth_service.dart
│   │   └── secure_storage_service.dart
│
│   ├── shared/
│   │   ├── widgets/
│   │   │   ├── custom_button.dart
│   │   │   ├── custom_textfield.dart
│   │   │   └── loading_indicator.dart
│   │   ├── dialogs/
│   │   │   ├── error_dialog.dart
│   │   │   ├── success_dialog.dart
│   │   │   └── confirmation_dialog.dart
│   │   └── extensions/
│   │       ├── string_extensions.dart
│   │       ├── context_extensions.dart
│   │       └── date_extensions.dart
│
│   └── main.dart
│
├── test/
│   ├── core/
│   │   ├── constants/
│   │   ├── error/
│   │   ├── network/
│   │   └── utils/
│   ├── features/
│   │   ├── auth/
│   │   │   ├── data/
│   │   │   ├── domain/
│   │   │   ├── presentation/
│   │   ├── timesheet/
│   │   │   ├── data/
│   │   │   ├── domain/
│   │   │   ├── presentation/
│   ├── services/
│   │   ├── api_service_test.dart
│   │   ├── auth_service_test.dart
│   │   └── secure_storage_service_test.dart
│   ├── shared/
│   │   ├── widgets/
│   │   ├── dialogs/
│   │   └── extensions/
│   └── main_test.dart
│
└── pubspec.yaml

```

# 📱App Folder Structure Description

This document describes the directory structure and purpose of files used in the Flutter application.

## 📁 lib/
Contains all the main source code for the application.

### 📁 core/
Core modules shared across the app and not tied to any specific feature.

### 📁 constants/
Holds static values used throughout the app.

- **app_strings.dart**: String constants (e.g., labels, messages).
- **app_colors.dart**: App-wide color palette.
- **app_styles.dart**: Text styles and themes.
- **app_assets.dart**: Asset paths for images, icons, etc.
- **api_constants.dart**: Constants related to API (e.g., base URL, endpoints).

### 📁 error/
Handles error management and custom exceptions.

- **exceptions.dart**: Custom exceptions (e.g., ServerException, CacheException).
- **failures.dart**: Failure classes used in the domain layer.
- **error_messages.dart**: Centralized error messages.

### 📁 network/
Manages network-related utilities.

- **network_info.dart**: Checks for internet connectivity.
- **http_client.dart**: Handles HTTP requests (e.g., using Dio or http).

### 📁 utils/
Utility classes and helper functions.

- **validators.dart**: Input validation utilities.
- **date_utils.dart**: Helper functions for date formatting.
- **logger.dart**: Logging utilities for debugging.

### 📁 features/
Feature-based folder structure for modular development.

#### 📁 auth/ - User Authentication Module

##### 📁 data/
- **models/**: Data models (e.g., user_model, login_request, login_response).
- **data_sources/**: Handles data fetching (e.g., from API).
- **repositories/**: Implements domain repositories.

##### 📁 domain/
- **entities/**: Domain-level entities (abstract).
- **repositories/**: Abstract repository contracts.
- **usecases/**: Application logic like login, logout, forgot password.

##### 📁 presentation/
- **bloc/**: State management using the BLoC pattern.
- **pages/**: UI screens (e.g., login, splash).
- **widgets/**: Reusable UI components (e.g., login form, buttons).

- **auth.dart**: Export file to simplify imports for this module.

#### 📁 timesheet/ - Timesheet Management Module
Structure is similar to auth/.

- **models/**: timesheet_model, dropdown_model
- **usecases/**: Submitting timesheet, fetching dropdowns, etc.
- **presentation/**: Pages and UI elements like dropdowns and forms.
- **timesheet.dart**: Export file for this module.

### 📁 services/
App-wide services not tied to any single feature.

- **api_service.dart**: Generic API request logic.
- **auth_service.dart**: Authentication logic (e.g., token management).
- **secure_storage_service.dart**: Secure storage using packages like flutter_secure_storage.

### 📁 shared/
Common widgets, dialogs, and extensions reused across features.

#### 📁 widgets/
- **custom_button.dart**: Reusable button.
- **custom_textfield.dart**: Reusable text field.
- **loading_indicator.dart**: Loading spinner.

#### 📁 dialogs/
- **error_dialog.dart**: Displays error messages.
- **success_dialog.dart**: Displays success notifications.
- **confirmation_dialog.dart**: For user confirmations.

#### 📁 extensions/
- **string_extensions.dart**: Custom methods for String.
- **context_extensions.dart**: BuildContext shortcuts.
- **date_extensions.dart**: DateTime helper extensions.

### 📄 main.dart
Main entry point of the Flutter application.

## 📁 test/
Unit and widget tests for the application.

### 📁 core/
Tests for utilities like constants, errors, and network logic.

### 📁 features/
Mirrors the structure of `lib/features/`.

- **data/**: Test data models and repositories.
- **domain/**: Test use cases and domain entities.
- **presentation/**: Widget tests and BLoC tests.

### 📁 services/
- **api_service_test.dart**
- **auth_service_test.dart**
- **secure_storage_service_test.dart**

### 📁 shared/
Tests for shared widgets and dialogs.

### 📄 main_test.dart
Tests for application-level logic like routing, initialization, and integration.