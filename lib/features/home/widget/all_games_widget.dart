import 'package:convivalapp/core/constants/constants.dart';
import 'package:convivalapp/features/game/ludo/unity_launcher/launch_unity.dart';
import 'package:flutter/material.dart';

class AllGames extends StatefulWidget {
  final Function(int index)? ontap;
  const AllGames({super.key, this.ontap});

  @override
  State<AllGames> createState() => _AllGamesState();
}

class _AllGamesState extends State<AllGames> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "All Games",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              onTap: () {
                if (widget.ontap == null) {
                  return;
                } else {
                  widget.ontap!(1);
                }
              },
              child: const Text(
                "View all",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.yellow),
              ),
            ),
          ],
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
              SizedBox(width: size.width * .05),
              const AllGamesCardWidget(
                imageUrl: Constants.convivalCardoImg,
                title: "Convival Royale",
                subTitle: "Coming Soon",
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * .26,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              const AllGamesCardWidget(
                imageUrl: Constants.card8BallPollImg,
                title: "8 ball pool",
                subTitle: "Coming Soon",
              ),
              SizedBox(width: size.width * .05),
              const AllGamesCardWidget(
                imageUrl: Constants.fruitNinjaImg,
                title: "Fruit Ninja",
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
            height: size.width * .4,
            width: size.width * .42,
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
