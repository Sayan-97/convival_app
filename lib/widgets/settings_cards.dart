import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettinsCard extends StatelessWidget {
  final String leftIcon;
  final String title;
  final void Function()? onTap;
  const SettinsCard(
      {super.key, required this.leftIcon, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // onTap as void Function() ?? () {},
      child: ListTile(
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.grey[350],
        ),
        leading: SvgPicture.asset(leftIcon),

        // Image.asset(leftIcon),
        title: Text(title),
      ),
    );
  }
}
