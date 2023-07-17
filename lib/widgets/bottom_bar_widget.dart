import 'package:convivalapp/core/constants/constants.dart';
import 'package:convivalapp/features/home/home_screen.dart';
import 'package:convivalapp/screens/home.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  int navigationSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        label: "Home",
        icon: Image.asset(Constants.navbarHome),
      ),
      BottomNavigationBarItem(
        icon: Image.asset(Constants.navbargames),
        label: "Games",
      ),
      BottomNavigationBarItem(
        icon: Image.asset(Constants.navbarWallet),
        label: "Wallet",
      ),
      BottomNavigationBarItem(
        icon: Image.asset(Constants.navbarSettings),
        label: "Setting",
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageViewScreen() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: const <Widget>[
        HomePage(),
        HomeScreen(),
        HomeScreen(),
        HomeScreen(),
      ],
    );
  }

  void pageChanged(int index) {
    setState(
      () {
        navigationSelectedIndex = index;
      },
    );
  }

  void bottomTapped(int index) {
    setState(
      () {
        navigationSelectedIndex = index;
        pageController.animateToPage(index,
            duration: const Duration(milliseconds: 500), curve: Curves.ease);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (navigationSelectedIndex == 0) {
          return Future.value(true);
        } else {
          bottomTapped(0);
          return Future.value(false);
        }
      },
      child: Scaffold(
        body: buildPageViewScreen(),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border(
              top: BorderSide(
                width: 0.2,
                color: Colors.white.withOpacity(.2),
              ),
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, // Fixed
            backgroundColor: Colors.black, // <-- This works for fixed
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            currentIndex: navigationSelectedIndex,
            onTap: (index) {
              bottomTapped(index);
            },
            items: buildBottomNavBarItems(),
          ),
        ),
      ),
    );
  }
}
