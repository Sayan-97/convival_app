import 'package:convivalapp/widgets/appbar.dart';
import 'package:convivalapp/global_variables.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Appbar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
                          "\$700",
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                decoration: BoxDecoration(
                    color: GlobalVariables.accentColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Topobar Layek",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "topobarlayek6@gmail.com",
                          style: TextStyle(
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
                        const Text("\$1000",
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
                        const Text("95",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ))
                      ],
                    ),
                  )),
                ],
              )
            ],
          ),
        ));
  }
}
