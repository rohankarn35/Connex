import 'package:dating_app/components/authentication/bloc/authentication_bloc.dart';
import 'package:dating_app/components/welcomescreen/bloc/welcomescreen_bloc.dart';
import 'package:dating_app/widgets/custom_button.dart';
import 'package:dating_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup(){
  locator.registerFactory<CustomTextField>(() => CustomTextField());
  locator.registerFactory<TextEditingController>(() => TextEditingController());
  locator.registerFactory<CustomButton>(() => CustomButton());
  locator.registerSingleton<WelcomescreenBloc>(WelcomescreenBloc());
  locator.registerSingleton<AuthenticationBloc>(AuthenticationBloc());
}