part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationState {}

sealed class AuthenticationActionState extends AuthenticationState {}

final class AuthenticationNavigateToForgotPasswordScreenActionState extends AuthenticationActionState {}
final class AuthenticationNavigateToSignUpPageScreenActionState extends  AuthenticationActionState {}
final class AuthenticationNavigateToLoginScreenActionState extends AuthenticationActionState {} 
final class AuthenticationNavigateToWelcomeProfileScreenActionState extends AuthenticationActionState {}

final class AuthenticationInitial extends AuthenticationState {}
