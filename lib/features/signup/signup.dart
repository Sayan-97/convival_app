import 'package:convivalapp/core/colors/app_colors.dart';
import 'package:convivalapp/core/constants/constants.dart';
import 'package:convivalapp/core/extentions/common_extention.dart';
import 'package:convivalapp/core/routes/routes_name.dart';
import 'package:convivalapp/features/signup/cubit/signup_cubit.dart';
import 'package:convivalapp/features/signup/cubit/signup_state.dart';
import 'package:convivalapp/global_variables.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool blockScreen = false;
  final formKey = GlobalKey<FormState>();
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? nameController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff000813),
      body: BlocListener<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state is SignUpError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message ?? "Something Went worng")),
            );
          } else if (state is SignUpSuccess) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              ScreenNames.landing,
              (Route<dynamic> route) => false,
            );
          }
          if (state is SignUpLoading) {
            setState(() {
              blockScreen = true;
            });
          }
        },
        child: WillPopScope(
          onWillPop: () async {
            if (blockScreen) {
              return false;
            } else {
              return true;
            }
          },
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          Constants.loginBgImage,
                          width: double.infinity,
                          height: size.height * .35,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: double.infinity,
                          height: size.height * .35,
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
                          height: size.height * .35,
                          decoration: const BoxDecoration(
                            color: Color(0x4f000813),
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text("Welcome to the World of Convival",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Outfit',
                              fontSize: 27,
                              fontWeight: FontWeight.w800,
                              color: Colors.white)),
                    ),
                    SizedBox(
                      height: size.height * .05,
                    ),
                    Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // const Text(
                            //   "Enter your Name to Sign Up",
                            //   style: TextStyle(
                            //     fontSize: 14,
                            //     fontWeight: FontWeight.w400,
                            //   ),
                            // ),
                            const SizedBox(
                              height: 16,
                            ),
                            TextFormField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                labelText: 'Enter your Name',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                            ),
                            // const SizedBox(
                            //   height: 10,
                            // ),
                            // const Text(
                            //   "Enter your Email to Sign Up",
                            //   style: TextStyle(
                            //     fontSize: 14,
                            //     fontWeight: FontWeight.w400,
                            //   ),
                            // ),
                            const SizedBox(
                              height: 16,
                            ),
                            TextFormField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                labelText: 'Enter your Email Id',
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                return value!.validateEmail();
                              },
                            ),
                            // const SizedBox(height: 10),
                            // const Text(
                            //   "Enter your Password to Sign Up",
                            //   style: TextStyle(
                            //     fontSize: 14,
                            //     fontWeight: FontWeight.w400,
                            //   ),
                            // ),
                            const SizedBox(
                              height: 16,
                            ),
                            TextFormField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  labelText: 'Enter your password',
                                  border: OutlineInputBorder()),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: size.height * .05,
                            ),
                            const Text(
                              "By continuing, you agree to Convails’s Terms & Conditions and Privacy Policy",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
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
                                  if (formKey.currentState!.validate()) {
                                    context
                                        .read<SignUpCubit>()
                                        .signUpWithEmailPassword(
                                            name: nameController!.text,
                                            email: emailController!.text,
                                            password: passwordController!.text);
                                  }
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
                            const SizedBox(height: 20),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: 'Already have an account?',
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' Sign In',
                                      style: const TextStyle(
                                          color: Colors.green, fontSize: 14),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.pop(context);
                                          // Navigator.pushNamed(
                                          //     context, ScreenNames.login);
                                        },
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                BlocBuilder<SignUpCubit, SignUpState>(
                  builder: (context, state) {
                    if (state is SignUpLoading) {
                      return Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height,
                        width: double.infinity,
                        color: AppColors.backgroundColor.withOpacity(.2),
                        child: const CircularProgressIndicator(),
                      );
                    } else {
                      return Container();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
