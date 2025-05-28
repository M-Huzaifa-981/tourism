import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/generated/assets.dart';
import 'package:tourism/screens/food_details_screen.dart';
import 'package:tourism/utils/constants/strings.dart';
import 'package:tourism/utils/customWidgets/cards/trending_card.dart';

class FoodsTab extends StatelessWidget {
  const FoodsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: Assets.foodImages.length,
      itemBuilder: (context, index) {
        return TrendingCard(
          titleText: MyStrings.foodNames[index],
          image: Assets.foodImages[index],
          onTap: () {
            Get.to(FoodDetailsScreen());
          },
        );
      },
    );
  }
}
