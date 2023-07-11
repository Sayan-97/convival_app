import 'package:convivalapp/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:convivalapp/global_variables.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Screen1BGImg.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff000813),
                  Color(0x84000813),
                  Color(0xff000813)
                ],
              ))),
          Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(color: Color(0xc1001027))),
          Positioned(
            bottom:
                MediaQuery.of(context).size.height * 0.3, // 20% from the top
            left: (MediaQuery.of(context).size.width - 613) / 2,
            width: 613,
            height: 613,
            child: Image.asset(
              "assets/images/Ellipse 3.png",
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppBar(
                title: Center(
                  child: Image.asset("assets/images/logo.png"),
                ),
                toolbarHeight: 150,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/CashImg.png"),
                    Column(
                      children: [
                        const Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("Earn and Withdraw Money Instantly",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Outfit',
                                    fontSize: 27,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white))),
                        const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Lorem ipsum dolor sit amet consectetur. Convallis adipiscing dolor blandit amet felis nec montes lectus pretium.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Outfit',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: GlobalVariables.textGray),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40),
                          child: Center(
                            child: Container(
                              width: 160,
                              height: 52,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  gradient: GlobalVariables.buttonBackground),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignUp()));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent),
                                child: const Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Outfit',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
