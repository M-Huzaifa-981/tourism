import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism/screens/food_screen.dart';
import 'package:tourism/screens/restaurant_menu_screen.dart';

import '../generated/assets.dart';
import '../models/imageCardInfo.dart';
import '../utils/customWidgets/imageInfoCard.dart';

class DiscoverScreen extends StatelessWidget {
  DiscoverScreen({super.key});

  static final String imagePath = "assets/images";

  final List<String> titles = [
    "Food",
    "Society",
    "People",
    "Living",
    "Region",
    "Culture",
    "Fashion",
    "Entertainments",
  ];

  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.blue,
    Colors.yellow,
    Colors.brown,
    Colors.cyan,
    CupertinoColors.systemGreen,
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DISCOVER"),
        leading: IconButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (BuildContext context, int index) {
          final cardData = ImageCardInfo(
            image: Assets.images[index],
            heading: titles[index],
            subtitle: "Explore New ${titles[index]}"
          );
          return imageInfoCard(
            imageCardInfo: cardData,
            headingSize: 33,
            titleSize: 44,
            subTitleSize: 12,
            imageSize: Size(width, height / 4.3),
            linearGradient: LinearGradient(
              colors: [
                colors[index].withOpacity(0.1),
                colors[index].withOpacity(0.9),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              transform: GradientRotation(45),
            ),
            isShowCardInfo: false,
            onTap: (){
              Get.to(FoodScreen());
            },
            borderRadius: 0,
          );
        },
      ),
    );
  }
}
