import 'package:dating_app/components/authentication/screens/forgot_password_screen.dart';
import 'package:dating_app/components/authentication/screens/login_screen.dart';
import 'package:dating_app/components/authentication/screens/signup_screen.dart';
import 'package:dating_app/components/welcomescreen/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class RouteManager{
  static const String Home = "./";
  static const String Login = "/login";
static const String SignUp = "/signup";

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case Home:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case SignUp:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}