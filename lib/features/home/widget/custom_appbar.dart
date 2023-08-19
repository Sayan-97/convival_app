import 'package:convivalapp/core/colors/app_colors.dart';
import 'package:convivalapp/core/constants/constants.dart';
import 'package:convivalapp/core/routes/routes_name.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              ScreenNames.profile,
            );
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.lightBlueColor,
            ),
            child: Image.asset(
              Constants.userProfileImg,
              height: 56,
              width: 56,
            ),
          ),
        ),
        SizedBox(
          width: size.width * .14,
        ),
        Image.asset(
          Constants.appNameImg,
          width: size.width * .4,
          height: size.height * .08,
        ),
      ],
    );
  }
}
