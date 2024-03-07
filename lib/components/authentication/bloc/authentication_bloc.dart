import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
   on<AuthenticationInitialEvent>(authenticationInitialEvent);
   on<AuthenticationForgotPasswordButtonClickedActionEvent>(authenticationForgotPasswordButtonClickedActionEvent);
   on<AuthenticationLoginButtonClickedActionEvent>(authenticationLoginButtonClickedActionEvent);
   on<AuthenticationSignUpButtonClickedActionEvent>(authenticationSignUpButtonClickedActionEvent);
  }

  FutureOr<void> authenticationInitialEvent(AuthenticationInitialEvent event, Emitter<AuthenticationState> emit) {
  }
  

 

  FutureOr<void> authenticationForgotPasswordButtonClickedActionEvent(AuthenticationForgotPasswordButtonClickedActionEvent event, Emitter<AuthenticationState> emit) {
  }

  FutureOr<void> authenticationLoginButtonClickedActionEvent(AuthenticationLoginButtonClickedActionEvent event, Emitter<AuthenticationState> emit) {
  }

  FutureOr<void> authenticationSignUpButtonClickedActionEvent(AuthenticationSignUpButtonClickedActionEvent event, Emitter<AuthenticationState> emit) {
  }
}
