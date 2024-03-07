part of 'welcomescreen_bloc.dart';

@immutable
sealed class WelcomescreenState {}

sealed class WelcomesreenActionState extends WelcomescreenState {}

final class WelcomescreenNavigateToLoginScreen extends WelcomesreenActionState {}

final class WelcomescreenNavigatetoSignUpScreen extends WelcomesreenActionState {}

final class WelcomescreenErrorState extends WelcomescreenState {}

final class WelcomescreenInitialState extends WelcomescreenState {}
