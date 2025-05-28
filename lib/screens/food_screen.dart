import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/generated/assets.dart';
import 'package:tourism/screens/food_details_screen.dart';

import '../utils/customWidgets/cards/food_card.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            PageView.builder(
              dragStartBehavior: DragStartBehavior.start,
              scrollDirection: Axis.vertical,
              itemCount: Assets.foodImages.length,
              itemBuilder: (context, index) {
                return FoodCard(
                  image: Assets.foodImages[index],
                  onTap: () {
                    Get.to(FoodDetailsScreen());
                  },
                );
              },
            ),
            Container(
              height: height / 7.5,
              child: AppBar(
                title: Text('Foods'),
                centerTitle: true,
                backgroundColor: Theme.of(
                  context,
                ).primaryColor.withValues(alpha: 0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
