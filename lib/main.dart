import 'package:dating_app/components/authentication/bloc/authentication_bloc.dart';
import 'package:dating_app/components/authentication/screens/login_screen.dart';
import 'package:dating_app/components/authentication/screens/signup_screen.dart';
import 'package:dating_app/components/profileSetup/screens/allSetScreen.dart';
import 'package:dating_app/components/profileSetup/screens/hobbiesscreen.dart';
import 'package:dating_app/components/profileSetup/screens/preferenceSelectScreen.dart';
import 'package:dating_app/components/profileSetup/screens/schoolserup_screen.dart';
import 'package:dating_app/components/profileSetup/screens/updateProfilePhoto.dart';
import 'package:dating_app/components/profileSetup/screens/welcomeProfile.dart';
import 'package:dating_app/components/welcomescreen/bloc/welcomescreen_bloc.dart';
import 'package:dating_app/components/welcomescreen/screens/welcome_screen.dart';
import 'package:dating_app/injection.dart';
import 'package:dating_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => WelcomescreenBloc()),
        BlocProvider(create: (context) => AuthenticationBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Connex',
        initialRoute: RouteManager.Home,
        onGenerateRoute: RouteManager.generateRoute,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
