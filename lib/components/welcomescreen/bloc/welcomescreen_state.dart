part of 'welcomescreen_bloc.dart';

@immutable
sealed class WelcomescreenState {}

sealed class WelcomesreenActionState extends WelcomescreenState {}

class WelcomescreenNavigateToLoginScreen extends WelcomesreenActionState {}

class WelcomescreenNavigatetoSignUpScreen extends WelcomesreenActionState {}

class WelcomescreenErrorState extends WelcomescreenState {}

final class WelcomescreenInitialState extends WelcomescreenState {}
