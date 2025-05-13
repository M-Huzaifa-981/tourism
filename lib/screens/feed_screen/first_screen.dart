import 'package:flutter/material.dart';

import '../../utils/customWidgets/feed_card.dart';

class ThingsToDoScreen extends StatelessWidget {
  const ThingsToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF17c69b),

      body: PageView(
        scrollDirection: Axis.vertical,
        // dragStartBehavior: DragStartBehavior.start,
        physics: PageScrollPhysics(),
        children: [FeedCard(picNo: 2,), FeedCard(picNo: 4,), FeedCard(picNo: 6,), FeedCard(picNo: 1,)],
      ),
    );
  }
}
