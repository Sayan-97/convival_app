import 'package:convivalapp/core/constants/constants.dart';
import 'package:convivalapp/features/game/ludo/unity_launcher/launch_unity.dart';
import 'package:flutter/material.dart';

class AllGamesCardList1 extends StatefulWidget {
  const AllGamesCardList1({super.key});

  @override
  State<AllGamesCardList1> createState() => _AllGamesCardList1State();
}

class _AllGamesCardList1State extends State<AllGamesCardList1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        const Text(
          "All Games",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        SizedBox(
          // color: Colors.red,
          height: size.height * .26,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LaunchUnity(),
                    ),
                  );
                },
                child: const AllGamesCardWidget(
                  imageUrl: Constants.ludoHeroCardImg,
                  title: "Ludo Hero",
                  subTitle: "2.5k Players",
                ),
              ),
              const SizedBox(width: 16),
              const AllGamesCardWidget(
                imageUrl: Constants.convivalCardoImg,
                title: "Convival Royale",
                subTitle: "Coming Soon",
              ),
              const SizedBox(width: 16),
              const AllGamesCardWidget(
                imageUrl: Constants.card8BallPollImg,
                title: "8 ball pool",
                subTitle: "Coming Soon",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AllGamesCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  const AllGamesCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.width * .38,
            width: size.width * .34,
            decoration: BoxDecoration(
              // color: Colors.yellow,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
