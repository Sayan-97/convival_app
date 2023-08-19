import 'package:equatable/equatable.dart';

abstract class SignUpState extends Equatable {}

class SignUpInit extends SignUpState {
  final String? email;
  final String? password;
  SignUpInit({this.email, this.password});

  @override
  List<Object?> get props => [email, password];
}

class SignUpSuccess extends SignUpState {
  //final bool isNewUser;
  // SignUpSuccess(
  //   //this.isNewUser
  //   //);
  @override
  List<Object> get props => [
        'SignUpSuccess'
        // isNewUser
      ];
}

class SignUpError extends SignUpState {
  final String? title;
  final String? message;
  SignUpError(this.title, this.message);
  @override
  List<Object?> get props => [title, message];
}

class SignUpLoading extends SignUpState {
  @override
  List<Object> get props => ['SignUpLoading'];
}
