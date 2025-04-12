# timesheet_app


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
