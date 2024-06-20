part of 'app_cubit.dart';

@immutable
sealed class AppState {}

final class AppInitial extends AppState {}

final class AppBottomNavBarChangeState extends AppState {}

final class ControllerChangeState extends AppState {}

final class ChangeAppModeChangeState extends AppState {}

class CreateDatabaseState extends AppState {}

class UpdateDatabaseState extends AppState {}

class InsertDatabaseState extends AppState {}

class GetCurrencyDateAiSuccessState extends AppState {}

class GetCurrencyDateAiLoadingState extends AppState {}

class GetCurrencyDateAiErrorState extends AppState {}

class GetDatabaseState extends AppState {}

class LoginSuccess extends AppState {}

class LoginError extends AppState {}

class LoginLoading extends AppState {}

class RegisterError extends AppState {}

class RegisterSuccess extends AppState {}

class RegisterLoading extends AppState {}
