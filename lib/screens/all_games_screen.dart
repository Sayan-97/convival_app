import 'package:convivalapp/features/home/widget/custom_topbar.dart';
import 'package:convivalapp/features/home/widget/recent_played_widget.dart';
import 'package:convivalapp/widgets/all_games_list1_widget.dart';
import 'package:convivalapp/widgets/all_games_list2_widget.dart';
import 'package:flutter/material.dart';

class AllGamesScreen extends StatefulWidget {
  final Function(int index) ontap;
  const AllGamesScreen({super.key, required this.ontap});

  @override
  State<AllGamesScreen> createState() => _AllGamesScreenState();
}

class _AllGamesScreenState extends State<AllGamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          children: [
            const SizedBox(height: 8),
            CustomTopBar(
              title: "Games",
              onTap: () {
                widget.ontap(0);
              },
            ),
            const AllGamesCardList1(),
            const RecentPlayed(title: "Trending"),
            const AllGamesCardList2(),
          ],
        ),
      ),
    );
  }
}
