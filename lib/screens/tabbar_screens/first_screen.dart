import 'package:flutter/material.dart';

import '../../widgets/feed_card.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF13a682),
      body: ListView(
        physics: PageScrollPhysics(),
        children: [FeedCard(), FeedCard(), FeedCard(), FeedCard()],
      ),
    );
  }
}
