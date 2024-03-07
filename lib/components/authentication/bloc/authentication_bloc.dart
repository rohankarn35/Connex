import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
   on<AuthenticationInitialEvent>(authenticationInitialEvent);
   on<AuthenticationForgotPasswordButtonClickedEvent>(authenticationForgotPasswordButtonClickedEvent);
   on<AuthenticationLoginButtonClickedEvent>(authenticationLoginButtonClickedEvent);
   on<AuthenticationSignUpButtonClickedEvent>(authenticationSignUpButtonClickedEvent);
  }

  FutureOr<void> authenticationInitialEvent(AuthenticationInitialEvent event, Emitter<AuthenticationState> emit) {
  }
  

  FutureOr<void> authenticationForgotPasswordButtonClickedEvent(AuthenticationForgotPasswordButtonClickedEvent event, Emitter<AuthenticationState> emit) {
  }

  FutureOr<void> authenticationLoginButtonClickedEvent(AuthenticationLoginButtonClickedEvent event, Emitter<AuthenticationState> emit) {
  }

  FutureOr<void> authenticationSignUpButtonClickedEvent(AuthenticationSignUpButtonClickedEvent event, Emitter<AuthenticationState> emit) {
    emit(AuthenticationNavigateToSignUpPageScreenActionState());
  }
}
