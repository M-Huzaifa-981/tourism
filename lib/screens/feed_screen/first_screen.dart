import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../widgets/feed_card.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF17c69b),

      body: ListView(
        // dragStartBehavior: DragStartBehavior.start,
        physics: PageScrollPhysics(),
        children: [FeedCard(), FeedCard(), FeedCard(), FeedCard()],
      ),
    );
  }
}
