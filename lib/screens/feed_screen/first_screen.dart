import 'package:flutter/material.dart';

import '../../utils/customWidgets/feed_card.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF17c69b),

      body: PageView(
        scrollDirection: Axis.vertical,
        // dragStartBehavior: DragStartBehavior.start,
        physics: PageScrollPhysics(),
        children: [FeedCard(), FeedCard(), FeedCard(), FeedCard()],
      ),
    );
  }
}
