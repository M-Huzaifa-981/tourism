import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:tourism/utils/customWidgets/cards/trending_card.dart';

import '../generated/assets.dart';

class TrendingResortsScreen extends StatelessWidget {
  const TrendingResortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            AppBar(
              title: Text('RESORTS'),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
            ),
            
            Expanded(
              child: ListView(
                physics: PageScrollPhysics(),
                children: [
                  TrendingCard(),
                  TrendingCard(),
                  TrendingCard(),
                  TrendingCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
