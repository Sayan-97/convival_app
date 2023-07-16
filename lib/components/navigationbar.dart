import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/HomeIcon.png"), label: 'Home'),
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/NavbarGamesIcon.png"),
            label: 'Games'),
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/NavbarWalletIcon.png"),
            label: 'Wallet'),
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/NavbarSettingsIcon.png"),
            label: 'Settings')
      ],
      showUnselectedLabels: true,
      iconSize: 30,
      type: BottomNavigationBarType.fixed,
    );
  }
}
