import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/screens/top_destinations_details_screen.dart';
import 'package:tourism/utils/constants/app_colors.dart';
import 'package:tourism/utils/constants/strings.dart';
import 'package:tourism/utils/customWidgets/cards/trending_card.dart';

import '../generated/assets.dart';

class TrendingResortsScreen extends StatelessWidget {
  const TrendingResortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Container(
          child: Column(
            children: [
              AppBar(
                title: Text('Hotels'),
                centerTitle: true,
                actions: [
                  IconButton(onPressed: null, icon: Icon(Icons.search)),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                child: Text(
                  'Trending Hotels',
                  style: TextStyle(
                    fontSize: 30,
                    color: Theme.of(context).cardColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  pageSnapping: true,
                  scrollBehavior: ScrollBehavior(),
                  dragStartBehavior: DragStartBehavior.start,
                  scrollDirection: Axis.vertical,
                  itemCount: Assets.hotelImages.length,
                  itemBuilder: (context, index) {
                    return TrendingCard(
                      titleText: MyStrings.hotelNames[index],
                      image: Assets.hotelImages[index],
                      onTap: () {
                        Get.to(TopDestinationsDetailScreen());
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
