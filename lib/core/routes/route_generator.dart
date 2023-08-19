import 'package:convivalapp/core/routes/routes_name.dart';
import 'package:convivalapp/core/services/auth_service.dart';
import 'package:convivalapp/features/login/presentation/ui/login_screen.dart';
import 'package:convivalapp/features/settings/about_us.dart';
import 'package:convivalapp/features/settings/support.dart';
import 'package:convivalapp/features/signup/cubit/signup_cubit.dart';
import 'package:convivalapp/features/signup/signup.dart';
import 'package:convivalapp/landing.dart';
import 'package:convivalapp/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class RouteGeneretor {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case ScreenNames.home:
        return MaterialPageRoute(builder: ((context) => const LandingScreen()));
      case ScreenNames.landing:
        return MaterialPageRoute(builder: ((context) => const LandingScreen()));
      case ScreenNames.profile:
        return MaterialPageRoute(builder: ((context) => const Profile()));
      case ScreenNames.signUp:
        return MaterialPageRoute(
          builder: ((context) => BlocProvider(
                create: (context) => SignUpCubit(
                  authService: GetIt.I<AuthService>(),
                ),
                child: const SignUpScreen(),
              )),
        );
      case ScreenNames.login:
        return MaterialPageRoute(builder: ((context) => const LoginScreen()));
      case ScreenNames.support:
        return MaterialPageRoute(builder: ((context) => const SupportScreen()));
      case ScreenNames.aboutUs:
        return MaterialPageRoute(builder: ((context) => const AboutUs()));

      default:
        return MaterialPageRoute(builder: (_) => const Text('Error'));
    }
  }
}
