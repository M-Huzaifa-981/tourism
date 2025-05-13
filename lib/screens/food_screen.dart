import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism/generated/assets.dart';
import 'package:tourism/models/imageCardInfo.dart';
import 'package:tourism/screens/food_card.dart';
import 'package:tourism/utils/app_colors.dart';
import 'package:tourism/utils/customWidgets/imageInfoCard.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String imagePath = 'assets/images';
    ImageCardInfo cardData = ImageCardInfo(
      image: "$imagePath/food_img2.jpeg",
      heading: "Athena Henri",
      subtitle: "Salads",
    );
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Scaffold(
        body: SafeArea(
          child: PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(5, (index)=>foodCard(context: context, index: index)),
          ),
        ),
      ),
    );
  }
}
