import 'package:convivalapp/core/constants/constants.dart';
import 'package:flutter/material.dart';

class AllGamesCardList2 extends StatefulWidget {
  const AllGamesCardList2({super.key});

  @override
  State<AllGamesCardList2> createState() => _AllGamesCardList2State();
}

class _AllGamesCardList2State extends State<AllGamesCardList2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        const Text(
          "Coming Soon",
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
            children: const [
              AllGamesCardWidget(
                imageUrl: Constants.checkersImg,
                title: "Checkers",
                subTitle: "Coming Soon",
              ),
              SizedBox(width: 16),
              AllGamesCardWidget(
                imageUrl: Constants.pokerImg,
                title: "Poker",
                subTitle: "Coming Soon",
              ),
              SizedBox(width: 16),
              AllGamesCardWidget(
                imageUrl: Constants.chessRoyalImg,
                title: "Chess Royale",
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
