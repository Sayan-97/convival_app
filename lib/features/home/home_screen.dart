import 'package:convivalapp/features/home/widget/all_games_widget.dart';
import 'package:convivalapp/features/home/widget/custom_appbar.dart';
import 'package:convivalapp/features/home/widget/recent_played_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Function(int index) ontap;
  const HomeScreen({super.key, required this.ontap});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          children: [
            const CustomAppBar(),
            const SizedBox(height: 8),
            const RecentPlayed(),
            const SizedBox(height: 16),
            AllGames(ontap: widget.ontap),
          ],
        ),
      ),
    );
  }
}
