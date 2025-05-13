import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism/screens/food_details_screen.dart';

import '../utils/app_colors.dart';

Widget foodCard({BuildContext? context, required int index}) {
  return GestureDetector(
    onTap: (){Get.to(FoodDetailsScreen());},
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.blue),
          child: Image(
            image: AssetImage('assets/images/food_img$index.jpeg'),
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          // width: double.infinity,
          decoration: BoxDecoration(
            // color: Colors.blue,
            gradient: LinearGradient(
              colors: [
                AppColors.primaryColor.withValues(alpha: 0.9),
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Creamy\nRoasted\nButternut\nSquash\nPasta',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'There are more than 2500 people who recommend Creamy Roasted Butternut Squash Pasta',
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white54.withValues(alpha: 0.5),
                Colors.white.withValues(alpha: 0.2),
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.maybePop(context!);
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
              Text('Food', style: TextStyle(color: Colors.blueGrey, fontSize: 20)),
              IconButton(
                onPressed: () {
                  Navigator.maybePop(context!);
                },
                icon: Icon(Icons.search, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
