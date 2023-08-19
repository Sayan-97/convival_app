import 'package:convivalapp/core/constants/constants.dart';
import 'package:convivalapp/core/routes/routes_name.dart';
import 'package:convivalapp/features/home/widget/custom_topbar.dart';
import 'package:convivalapp/widgets/settings_cards.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  final Function(int index) ontap;
  const SettingsScreen({super.key, required this.ontap});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          shrinkWrap: true,
          children: [
            CustomTopBar(
              title: "Settings",
              onTap: () {
                widget.ontap(0);
              },
            ),
            ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
              itemCount: Constants.settingIcons.length,
              itemBuilder: (context, index) {
                return SettinsCard(
                  title: Constants.settingTitles[index],
                  leftIcon: Constants.settingIcons[index],
                  onTap: () {
                    if (Constants.settingTitles[index] == "Convival Support") {
                      Navigator.pushNamed(context, ScreenNames.support);
                    } else if (Constants.settingTitles[index] == "About Us") {
                      Navigator.pushNamed(context, ScreenNames.aboutUs);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
