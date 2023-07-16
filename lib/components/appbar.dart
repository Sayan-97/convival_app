import 'package:convivalapp/global_variables.dart';
import 'package:convivalapp/screens/profile.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: AppBar(
        toolbarHeight: 120,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                ));
          },
          child: CircleAvatar(
            radius: 50,
            backgroundColor: const Color(0xFF00265A),
            child: Center(
              child: Image.asset("assets/images/avatar.png"),
            ),
          ),
        ),
        title: Center(child: Image.asset("assets/images/logo.png")),
        actions: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                color: GlobalVariables.accentColor,
                borderRadius: BorderRadius.circular(35),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/images/walletIcon.png"),
                  const SizedBox(width: 5),
                  const Text(
                    "\$700",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
