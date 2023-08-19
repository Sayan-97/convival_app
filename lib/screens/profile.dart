import 'package:convivalapp/core/routes/routes_name.dart';
import 'package:convivalapp/features/home/widget/custom_topbar.dart';
import 'package:convivalapp/features/login/presentation/cubit/login_cubit.dart';
import 'package:convivalapp/global_variables.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return Scaffold(
        // appBar: AppBar(),
        // appBar: const Appbar(),
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 12),
            CustomTopBar(
              title: "Profile",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                  color: GlobalVariables.accentColor,
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wallet Balance",
                        style: TextStyle(color: GlobalVariables.textGray),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "\$ - -",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  Container(
                    width: 160,
                    height: 52,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: GlobalVariables.buttonBackground),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/walletIcon.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Wallet',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Outfit',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                  color: GlobalVariables.accentColor,
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(auth.currentUser?.displayName ?? "--",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        auth.currentUser?.email ?? "--",
                        style: const TextStyle(
                            color: GlobalVariables.textGray,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: GlobalVariables.lightAccentColor,
                    child: Center(
                      child: Image.asset("assets/images/editIcon.png"),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: GlobalVariables.accentColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      Image.asset("assets/images/cash.png"),
                      const SizedBox(height: 20),
                      const Text("Lifetime Earnings",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                      const SizedBox(height: 8),
                      const Text("\$ - -",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                )),
                const SizedBox(width: 20),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: GlobalVariables.accentColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      Image.asset("assets/images/controller.png"),
                      const SizedBox(height: 20),
                      const Text("Games Played",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                      const SizedBox(height: 8),
                      const Text(
                        "- -",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                )),
              ],
            ),
            const Spacer(),
            Container(
              width: 200,
              height: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: GlobalVariables.buttonBackground),
              child: ElevatedButton(
                  onPressed: () async {
                    context.read<LoginCubit>().signOut();

                    await Future.delayed(const Duration(milliseconds: 500), () {
                      Navigator.popAndPushNamed(context, ScreenNames.landing);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset(
                      //   "assets/images/walletIcon.png",
                      //   color: Colors.black,
                      // ),
                      // const SizedBox(
                      //   width: 10,
                      // ),
                      Text(
                        'Logout',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Outfit',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    ));
  }
}
