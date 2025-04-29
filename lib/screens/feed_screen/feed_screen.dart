import 'package:flutter/material.dart';
import 'package:tourism/screens/feed_screen/second_screen.dart';
import 'package:tourism/screens/feed_screen/third_screen.dart';

import 'first_screen.dart';
import 'fourth_screen.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF13a682),
      appBar: AppBar(
        backgroundColor: Color(0XFF39c8a5),
        centerTitle: true,
        title: Text('FEED', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],

        // bottom:
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Feed',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            TabBar(
              // indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              dividerColor: Colors.transparent,
              labelPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              unselectedLabelColor: Color(0XFF39c8a5),
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
              tabs: [
                Text('Things To Do'),
                Text('Flights'),
                Text('Hotels'),
                Text('Food'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  FirstScreen(),
                  SecondScreen(),
                  ThirdScreen(),
                  FourthScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
