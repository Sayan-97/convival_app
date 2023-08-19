import 'package:convivalapp/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:convivalapp/global_variables.dart';

class OnboardingWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final double? imageHeight;

  const OnboardingWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.imageHeight});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Image.asset(Constants.onboardingBgImg),
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
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xc1001027),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * .05),
              child: Image.asset(
                Constants.onboardingElipsImg,
              ),
            ),
            SafeArea(
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * .05),
                    Image.asset(Constants.topBarImg, width: size.width * .45),
                    SizedBox(height: size.height * .03),
                    Image.asset(
                      image,
                      height: imageHeight ?? size.height * .3,
                    ),
                    SizedBox(height: size.height * .06),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 27,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: size.height * .05),
                    Text(
                      subTitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: GlobalVariables.textGray),
                    ),
                  ],
                ),
              ),
            )
          ],
        )

        //  Stack(
        //   children: [
        //     Image.asset(
        //       Constants.onboardingBgImg,
        //       fit: BoxFit.cover,
        //       width: double.infinity,
        //       height: double.infinity,
        //     ),
        //     Container(
        //       width: double.infinity,
        //       height: double.infinity,
        //       decoration: const BoxDecoration(
        //         gradient: LinearGradient(
        //           begin: Alignment.topCenter,
        //           end: Alignment.bottomCenter,
        //           colors: [
        //             Color(0xff000813),
        //             Color(0x84000813),
        //             Color(0xff000813)
        //           ],
        //         ),
        //       ),
        //     ),
        //     Container(
        //       width: double.infinity,
        //       height: double.infinity,
        //       decoration: const BoxDecoration(
        //         color: Color(0xc1001027),
        //       ),
        //     ),
        //     Positioned(
        //       bottom:
        //           MediaQuery.of(context).size.height * 0.3, // 20% from the top
        //       left: (MediaQuery.of(context).size.width - 613) / 2,
        //       width: 613,
        //       height: 613,
        //       child: Image.asset(
        //         "assets/images/Ellipse 1.png",
        //       ),
        //     ),
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.stretch,
        //       children: [
        //         AppBar(
        //           title: Center(
        //             child: Image.asset("assets/images/logo.png"),
        //           ),
        //           toolbarHeight: 150,
        //         ),
        //         Expanded(
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Image.asset("assets/images/1stPrizeLogo.png"),
        //               Column(
        //                 children: [
        //                   const Padding(
        //                       padding: EdgeInsets.all(20),
        //                       child: Text("Play Fun Games and Earn Rewards",
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontFamily: 'Outfit',
        //                               fontSize: 27,
        //                               fontWeight: FontWeight.w800))),
        //                   const Padding(
        //                     padding: EdgeInsets.all(20),
        //                     child: Text(
        //                       "Lorem ipsum dolor sit amet consectetur. Convallis adipiscing dolor blandit amet felis nec montes lectus pretium.",
        //                       textAlign: TextAlign.center,
        //                       style: TextStyle(
        //                           fontFamily: 'Outfit',
        //                           fontSize: 16,
        //                           fontWeight: FontWeight.w400,
        //                           color: GlobalVariables.textGray),
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.all(40),
        //                     child: Center(
        //                       child: Container(
        //                         width: 160,
        //                         height: 52,
        //                         decoration: BoxDecoration(
        //                             borderRadius: BorderRadius.circular(16),
        //                             gradient: GlobalVariables.buttonBackground),
        //                         child: ElevatedButton(
        //                           onPressed: () {
        //                             Navigator.pushReplacement(
        //                                 context,
        //                                 MaterialPageRoute(
        //                                     builder: (context) =>
        //                                         const Screen2()));
        //                           },
        //                           style: ElevatedButton.styleFrom(
        //                               backgroundColor: Colors.transparent,
        //                               shadowColor: Colors.transparent),
        //                           child: const Text(
        //                             'Next',
        //                             style: TextStyle(
        //                                 color: Colors.black,
        //                                 fontFamily: 'Outfit',
        //                                 fontSize: 16,
        //                                 fontWeight: FontWeight.w600),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               )
        //             ],
        //           ),
        //         )
        //       ],
        //     )
        //   ],
        // ),
        );
  }
}
