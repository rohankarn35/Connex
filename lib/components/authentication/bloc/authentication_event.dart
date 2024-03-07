part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent {}

final class AuthenticationInitialEvent extends AuthenticationEvent {}
final class AuthenticationLoginButtonClickedActionEvent extends AuthenticationEvent {} 
final class AuthenticationSignUpButtonClickedActionEvent extends AuthenticationEvent {}
final class AuthenticationForgotPasswordButtonClickedActionEvent extends AuthenticationEvent {}
