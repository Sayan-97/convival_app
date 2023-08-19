import 'package:convivalapp/core/constants/constants.dart';
import 'package:convivalapp/core/routes/routes_name.dart';
import 'package:convivalapp/global_variables.dart';
import 'package:convivalapp/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // late Box onBoarding;
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = const [
    OnboardingWidget(
      image: Constants.onboardingPrizeImg,
      title: "Play Fun Games and Earn Rewards",
      subTitle:
          "Lorem ipsum dolor sit amet consectetur. Convallis adipiscing dolor blandit amet felis nec montes lectus pretium.",
    ),
    OnboardingWidget(
      image: Constants.onboardingGameImg,
      title: "Various Games to Choose and Play",
      subTitle:
          "Lorem ipsum dolor sit amet consectetur. Convallis adipiscing dolor blandit amet felis nec montes lectus pretium.",
    ),
    OnboardingWidget(
      image: Constants.onboardingCashImg,
      title: "Earn and Withdraw Money Instantly",
      subTitle:
          "Lorem ipsum dolor sit amet consectetur. Convallis adipiscing dolor blandit amet felis nec montes lectus pretium.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return _pages[index];
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _pages.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 10,
                      width: _currentPage == index ? 24 : 10,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:
                            _currentPage == index ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height * .04, bottom: size.height * .02),
                  child: Center(
                    child: Container(
                      width: 160,
                      height: 52,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: GlobalVariables.buttonBackground),
                      child: ElevatedButton(
                        onPressed: () async {
                          if (_currentPage < _pages.length - 1) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            await setInstallValue();
                            // ignore: use_build_context_synchronously
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              ScreenNames.landing,
                              (Route<dynamic> route) => false,
                            );
                            // Navigate to the next screen or perform an action
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: Text(
                          _currentPage < _pages.length - 1
                              ? 'Next'
                              : 'Get Started',
                          style: const TextStyle(
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
            ),
          ),
        ],
      ),
    );
  }
}

setInstallValue() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  await prefs.setBool('newInstall', false);
}
