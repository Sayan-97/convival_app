import 'package:convivalapp/core/colors/app_colors.dart';
import 'package:convivalapp/core/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomTopBar extends StatefulWidget {
  final String title;
  final Function? onTap;
  const CustomTopBar({super.key, required this.title, this.onTap});

  @override
  State<CustomTopBar> createState() => _CustomTopBarState();
}

class _CustomTopBarState extends State<CustomTopBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(children: [
      GestureDetector(
        onTap: () {
          if (widget.onTap == null) {
            return;
          } else {
            widget.onTap!();
          }
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightBlueColor,
          ),
          child: Image.asset(Constants.backBtnImg),
        ),
      ),
      SizedBox(width: size.width * .03),
      Text(
        widget.title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      )
    ]);
  }
}
