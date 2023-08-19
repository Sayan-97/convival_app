import 'package:convivalapp/core/colors/app_colors.dart';
import 'package:convivalapp/core/constants/constants.dart';
import 'package:convivalapp/features/home/widget/custom_topbar.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            children: [
              CustomTopBar(
                title: "Support",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: size.height * .03),
              const Text(
                "Contact us for any help and quarries , our customer support team is available for 24/7.",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: size.height * .03),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SupportCard(
                      icon: Constants.supportCardIcon1,
                      title: "Email",
                      subTitle: "contact@convival.io"),
                  SupportCard(
                      icon: Constants.supportCardIcon2,
                      title: "Chat With Us",
                      subTitle: "Chat"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SupportCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String icon;

  const SupportCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      width: MediaQuery.of(context).size.width * .43,
      decoration: BoxDecoration(
        color: AppColors.bottomNavbarBackground,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.asset(icon, height: 70, width: 70),
          SizedBox(height: MediaQuery.of(context).size.height * .02),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          Text(
            subTitle,
            style: const TextStyle(
                color: Colors.yellow,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
