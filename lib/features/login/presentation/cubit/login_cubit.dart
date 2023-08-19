import 'package:convivalapp/core/services/auth_service.dart';
import 'package:convivalapp/features/login/presentation/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthService authService;
  LoginCubit({required this.authService}) : super(LoginInit());

  void signInWithGmail() async {
    try {
      emit(LoginLoading());
      await authService.signInWithGoogle();
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginError("Something went wrong", e.toString()));
    }
  }

  void loginWithEmailPassword(
      {required String email, required String password}) async {
    try {
      emit(LoginLoading());
      await authService.login(email: email, password: password);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginError("Something went wrong", e.toString()));
    }
  }

  void signOut() async {
    try {
      await authService.signOut();
    } catch (e) {
      debugPrint("");
    }
  }
}
