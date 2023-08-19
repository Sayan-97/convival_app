import 'package:convivalapp/core/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void serviceLoactor() {
  getIt.registerFactory<SignInService>(() => FirebaseSignInService());
  getIt.registerFactory<AuthService>(() => AuthService(
      firebaseAuth: FirebaseAuth.instance,
      service: getIt.get<SignInService>()));
}
