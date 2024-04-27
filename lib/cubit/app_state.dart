part of 'app_cubit.dart';

@immutable
sealed class AppState {}

final class AppInitial extends AppState {}
final class AppBottomNavBarChangeState extends AppState {}
final class ControllerChangeState extends AppState {}
final class ChangeAppModeChangeState extends AppState {}
