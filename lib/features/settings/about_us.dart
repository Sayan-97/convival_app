import 'package:convivalapp/core/constants/constants.dart';
import 'package:convivalapp/features/home/widget/custom_topbar.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Column(
          children: [
            CustomTopBar(
              title: "About Us",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 24),
            Image.asset(
              Constants.appNameImg,
              width: MediaQuery.of(context).size.width * .5,
            ),
            const SizedBox(height: 24),
            const Text(
              "Lorem ipsum dolor sit amet consectetur. Elit amet varius orci cursus tincidunt pellentesque lectus. Tortor dis sed consectetur sit sed sapien pharetra blandit sit. Lectus sed id mi vitae urna lorem vulputate id et.\n\nCommodo habitant quam semper tempor amet. Commodo lectus posuere nulla dui mauris metus nam vestibulum. Netus eu facilisi ut sed mauris pulvinar nisl tellus. Et varius vitae orci feugiat in mauris venenatis eget sit.\n\nPharetra praesent orci vel eget augue est nam. Elit nibh gravida duis aenean molestie sed magna ultricies. Pulvinar nulla dictum massa risus consectetur ultrices tortor maecenas. Elit lectus enim at eget consequat. ",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      )),
    );
  }
}
