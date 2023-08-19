import 'dart:async';
import 'package:convivalapp/core/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

// firebase auth --> credentatials --> phone, emailpassword ->
abstract class SignInService {
  Future<void> signInWithGoogle();
  Future<void> loginWithEmailPassword(String email, String password);
  Future<void> signInWithEmailPassword(
      String name, String email, String password);
}

class FirebaseSignInService implements SignInService {
  @override
  Future<void> loginWithEmailPassword(String email, String password) async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw "Enter valid email or password";
      } else if (e.code == 'wrong-password') {
        throw 'Wrong password provided for that user.';
      } else if (e.code == 'network-request-failed') {
        throw "No internet connection";
      } else {
        throw e.code.toString();
      }
    }
  }

  @override
  Future<void> signInWithGoogle() async {
    final GoogleSignIn googleSignIn =
        GoogleSignIn(scopes: ['profile', 'email']);
    FirebaseAuth auth = FirebaseAuth.instance;

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        await auth.signInWithCredential(credential);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          // handle the error here
        } else if (e.code == 'invalid-credential') {
          // handle the error here
        }
      } catch (e) {
        // handle the error here
      }
    }
  }

  @override
  Future<User?> signInWithEmailPassword(
      String name, String email, String password) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
      await user!.updateDisplayName(name);
      await user.reload();
      user = auth.currentUser;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        // print('The account already exists for that email.');
      }
    } catch (e) {
      // print(e);
    }
    return user;
  }
}

class AuthService {
  final FirebaseAuth firebaseAuth;
  final SignInService service;
  AuthService({required this.firebaseAuth, required this.service});

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      await service.loginWithEmailPassword(email, password);
    } catch (e) {
      throw e.toString();
    }
  }

  Future<void> signUp(
      {required String name,
      required String email,
      required String password}) async {
    try {
      await service.signInWithEmailPassword(name, email, password);
    } catch (e) {
      throw e.toString();
    }
  }

  Future<void> signOut() async {
    return firebaseAuth.signOut();
  }

  Future<UserStateEnum> getUserState() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool freshInstall = prefs.getBool('newInstall') ?? true;

    FirebaseAuth.instance.userChanges().listen(onDone: () {
      // print(("object"));
    }, onError: (error) {
      // print(error.toString());
    }, (event) {
      if (event == null) {
        // print("Not Login");
      } else {
        // print("Login");
      }
    });
    if (firebaseAuth.currentUser == null && freshInstall) {
      return UserStateEnum.freshInstall;
    } else if (firebaseAuth.currentUser == null) {
      return UserStateEnum.logout;
    } else {
      return UserStateEnum.login;
    }
  }

  Future signInWithGoogle() async {
    try {
      await service.signInWithGoogle();
    } catch (e) {
      throw e.toString();
    }
  }
}
