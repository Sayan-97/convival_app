import 'package:convivalapp/core/constants/constants.dart';
import 'package:convivalapp/global_variables.dart';
import 'package:convivalapp/screens/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                Constants.loginBgImage,
                width: double.infinity,
                height: 440,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                height: 440,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0x00000813), Color(0xff000813)],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 440,
                decoration: const BoxDecoration(
                  color: Color(0x4f000813),
                ),
              )
            ],
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Text("Welcome to the World of Convival",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 27,
                      fontWeight: FontWeight.w800,
                      color: Colors.white))),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Enter your Email to Sign Up",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Enter your Email Id',
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(9)),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image.asset("assets/images/googleIcon.png"),
                          SizedBox(width: 10),
                          Text(
                            "Sign Up with Google",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "By continuing, you agree to Convails’s Terms & Conditions and Privacy Policy",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: GlobalVariables.buttonBackground),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Outfit',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
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
