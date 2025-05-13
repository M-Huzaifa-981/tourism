import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tourism/screens/around_me_screen.dart';
import 'package:tourism/screens/favorite_resort_screen.dart';
import 'package:tourism/screens/favorite_resorts_screen/fav_destination_screen.dart';
import 'package:tourism/screens/feed_screen.dart';
import 'package:tourism/screens/food_details_screen.dart';
import 'package:tourism/screens/food_screen.dart';
import 'package:tourism/screens/rough_work.dart';
import 'package:tourism/screens/trending_resorts_screen.dart';
import 'main_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      home: DefaultTabController(
        length: 5,
        // child: FoodDetailsScreen(),
        child: MainNav(),
      ),
    );
  }
}
