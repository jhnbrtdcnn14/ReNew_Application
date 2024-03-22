import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>((event, emit) async {
      emit(LoginLoading());

      // Simulate authentication
      await Future.delayed(const Duration(seconds: 0));

      if (event.username == '' && event.password == '') {
        emit(LoginSuccess());
      } else {
        emit(LoginFailure('Invalid credentials'));
      }
    });

    on<LoginNavigateToRegister>((event, emit) {
      emit(NavigateToRegister());
    });
  }
}
