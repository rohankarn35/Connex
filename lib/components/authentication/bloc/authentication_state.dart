part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationState {}

sealed class AuthenticationActionState extends AuthenticationState {}

final class AuthenticationNavigateToForgotPasswordScreen extends AuthenticationActionState {}
final class AuthenticationNavigateToSignUpPageScreen extends  AuthenticationActionState {}
final class AuthenticationNavigateToLoginScreen extends AuthenticationActionState {} 
final class AuthenticationNavigateToWelcomeProfileScreen extends AuthenticationActionState {}

final class AuthenticationInitial extends AuthenticationState {}
