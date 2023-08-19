import 'package:convivalapp/core/dI/service_locator.dart';
import 'package:convivalapp/core/routes/route_generator.dart';
import 'package:convivalapp/core/services/auth_service.dart';
import 'package:convivalapp/core/theme/theme.dart';
import 'package:convivalapp/features/login/presentation/cubit/login_cubit.dart';
import 'package:convivalapp/landing.dart';
import 'package:convivalapp/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'firebase_options.dart';

class ConvivalMaterialApp extends StatefulWidget {
  const ConvivalMaterialApp({super.key});

  @override
  State<ConvivalMaterialApp> createState() => _ConvivalMaterialAppState();
}

class _ConvivalMaterialAppState extends State<ConvivalMaterialApp> {
  bool firebaseInitialized = false;
  String errorString = "";

  @override
  void initState() {
    super.initState();
    initializeFlutterFire();
  }

  Future<void> initializeFlutterFire() async {
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      serviceLoactor();
      // await setupFlutterHive();

      await Future.delayed((const Duration(seconds: 2)));
      setState(
        () {
          firebaseInitialized = true;
        },
      );
    } catch (e) {
      setState(
        () {
          errorString = e.toString();
        },
      );
    }
  }

  Future setupFlutterHive() async {
    await Hive.initFlutter();
    await Hive.openBox("onboarding");
  }

  @override
  Widget build(BuildContext context) {
    if (!firebaseInitialized) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: BaseTheme.getBaseTheme(),
          onGenerateRoute: RouteGeneretor.generate,
          home: const SplashScreen());
    } else {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LoginCubit(
              authService: GetIt.I<AuthService>(),
            ),
            child: Container(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: BaseTheme.getBaseTheme(),
          onGenerateRoute: RouteGeneretor.generate,
          home: const LandingScreen(),
        ),
      );
    }
  }
}
