import 'package:convivalapp/core/colors/app_colors.dart';
import 'package:convivalapp/core/constants/constants.dart';
import 'package:convivalapp/features/game/ludo/unity_launcher/launch_unity.dart';
import 'package:flutter/material.dart';

class RecentPlayed extends StatefulWidget {
  final String? title;

  const RecentPlayed({super.key, this.title});

  @override
  State<RecentPlayed> createState() => _RecentPlayedState();
}

class _RecentPlayedState extends State<RecentPlayed> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              widget.title ?? "Recently Played",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          height: size.height * .2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(
                Constants.recentPlayBgImg,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Container(
                height: size.height * .2,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xf400265a),
                      Color(0xff00265a),
                      Color(0xc1001e3c)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(Constants.ludoHeroImg),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          children: [
                            Text(
                              "Ludo Hero",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text("2.5k Players",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey))
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LaunchUnity(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 18),
                            decoration: BoxDecoration(
                              gradient: AppColors.buttonBackground,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Play Now',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Outfit',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
