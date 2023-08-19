import 'package:convivalapp/core/services/auth_service.dart';
import 'package:convivalapp/features/signup/cubit/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthService authService;
  SignUpCubit({required this.authService}) : super(SignUpInit());

  void signUpWithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
      emit(SignUpLoading());
      await authService.signUp(name: name, email: email, password: password);
      emit(SignUpSuccess());
    } catch (e) {
      emit(SignUpError("Something went wrong", e.toString()));
    }
  }
}
