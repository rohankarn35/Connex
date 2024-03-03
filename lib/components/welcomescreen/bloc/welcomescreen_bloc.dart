import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'welcomescreen_event.dart';
part 'welcomescreen_state.dart';

class WelcomescreenBloc extends Bloc<WelcomescreenEvent, WelcomescreenState> {
  WelcomescreenBloc() : super(WelcomescreenInitialState()) {
  on<WelcomescreenInitialEvent>(welcomescreenInitialEvent);
  on<WelcomescreenLoginButtonNavigateEvent>(welcomescreenLoginButtonNavigateEvent);
  on<WelcomescreenSignUpButtonNavigateEvent>(welcomescreenSignUpButtonNavigateEvent);
  
  }

  FutureOr<void> welcomescreenInitialEvent(WelcomescreenInitialEvent event, Emitter<WelcomescreenState> emit) {
    emit(WelcomescreenInitialState());
  }

  FutureOr<void> welcomescreenLoginButtonNavigateEvent(WelcomescreenLoginButtonNavigateEvent event, Emitter<WelcomescreenState> emit) {
    emit(WelcomescreenNavigateToLoginScreen());
  }

  FutureOr<void> welcomescreenSignUpButtonNavigateEvent(WelcomescreenSignUpButtonNavigateEvent event, Emitter<WelcomescreenState> emit) {
    emit(WelcomescreenNavigatetoSignUpScreen());
  }
}
