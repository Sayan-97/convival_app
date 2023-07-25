import 'package:convivalapp/core/constants/constants.dart';
import 'package:convivalapp/core/services/auth_service.dart';
import 'package:convivalapp/features/login/login_screen.dart';
import 'package:convivalapp/widgets/bottom_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder<UserStateEnum>(
        future: GetIt.I<AuthService>().getUserState(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            switch (snapshot.data) {
              case UserStateEnum.login:
                return const BottomBarWidget();

              case UserStateEnum.logout:
                return const LoginScreen();

              default:
                return const Center(child: CircularProgressIndicator());
            }
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
