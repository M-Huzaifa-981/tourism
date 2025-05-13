import 'package:flutter/material.dart';
import 'package:tourism/screens/all_resorts_screen.dart';
import 'package:tourism/screens/favorite_resorts_screen/fav_destination_screen.dart';
import 'package:tourism/screens/food_screen.dart';
import 'package:tourism/screens/trending_resorts_screen.dart';

import 'feed_screen/first_screen.dart';
import 'feed_screen/fourth_screen.dart';
import 'feed_screen/second_screen.dart';
import 'feed_screen/third_screen.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0XFF17c69b),
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
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Feed',
                style: TextStyle(fontSize: 35, color: Colors.white),
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
                unselectedLabelColor: Colors.white54,
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
                tabs: [
                  Text('Things To Do'),
                  Text('Trending'),
                  Text('Destinations'),
                  Text('Food'),
                  Text('All Resorts'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ThingsToDoScreen(),
                    TrendingResortsScreen(),
                    FavDestinationScreen(),
                    FoodScreen(),
                    AllResortsScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
