import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import '../../utils/customWidgets/cards/feed_card.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
     return Container(
      // backgroundColor: Color(0XFF17c69b),
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child:
             // FeedCard(),
            feedCard(
              image: Assets.images[index],
              size: Size(width, height),
              badgePosition: badges.BadgePosition.bottomEnd(bottom: -22, end: 15),
              hashtags: ["#tag1", "#tag2", "#tag3", "#tag4"],
            ),
          );
        },
      ),
    );

  }
}
