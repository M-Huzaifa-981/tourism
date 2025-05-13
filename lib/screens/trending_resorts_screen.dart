import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:tourism/utils/app_colors.dart';
import 'package:tourism/utils/customWidgets/trending_card.dart';

import '../generated/assets.dart';

class TrendingResortsScreen extends StatelessWidget {
  const TrendingResortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      // appBar: AppBar(
      //   title: Text('RESORTS'),
      //   centerTitle: true,
      //   actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
      // ),
      body: PageView(
        scrollDirection: Axis.vertical,
        physics: PageScrollPhysics(),
        children: [
          TrendingCard(),
          TrendingCard(),
          TrendingCard(),
          TrendingCard(),
        ],
      ),
    );
  }
}
