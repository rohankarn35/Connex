part of 'welcomescreen_bloc.dart';

@immutable
sealed class WelcomescreenEvent {}
class WelcomescreenInitialEvent extends WelcomescreenEvent {}
class WelcomescreenLoginButtonNavigateEvent extends WelcomescreenEvent {}
class WelcomescreenSignUpButtonNavigateEvent extends WelcomescreenEvent {}

