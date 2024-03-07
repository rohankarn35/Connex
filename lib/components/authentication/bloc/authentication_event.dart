part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent {}

final class AuthenticationInitialEvent extends AuthenticationEvent {}
final class AuthenticationLoginButtonClickedEvent extends AuthenticationEvent {} 
final class AuthenticationSignUpButtonClickedEvent extends AuthenticationEvent {}
final class AuthenticationForgotPasswordButtonClickedEvent extends AuthenticationEvent {}
final class AuthenticationNavigateToWelcomeProfileScreenActionEvent extends AuthenticationEvent {}