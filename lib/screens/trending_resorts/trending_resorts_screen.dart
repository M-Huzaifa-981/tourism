import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:tourism/utils/customWidgets/trending_card.dart';

import '../../generated/assets.dart';

class TrendingResortsScreen extends StatelessWidget {
  const TrendingResortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESORTS'),
        centerTitle: true,
        actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
      ),
      body: ListView(
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
