import 'package:flutter/material.dart';
import 'package:tourism/utils/constants/app_colors.dart';

import 'feed_screen/things_to_do_tab.dart';
import 'feed_screen/food_tab.dart';
import 'feed_screen/flights_tab.dart';
import 'feed_screen/hotels_tab.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

final List<Widget> _tabBarScreens = [
  ThingsToDoTab(),
  FlightsTab(),
  HotelsTab(),
  FoodsTab(),
];
int myIndex = 0;

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          AppBar(
            centerTitle: true,
            // backgroundColor: AppColors.normalGreenColor,
            title: Text(
              'Feed',
              // style: TextStyle(
              //   fontWeight: FontWeight.w500,
              //   color: AppColors.whiteColor,
              // ),
            ),
            // leading: IconButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   icon: Icon(Icons.arrow_back_ios),
            // ),
            actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
          ),

          Expanded(
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: DefaultTabController(
                length: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 9),
                      child: Text(
                        'Your Feed',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).cardColor,
                        ),
                      ),
                    ),
                    TabBar(
                      // indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Theme.of(context).cardColor,
                      indicatorColor: Theme.of(
                        context,
                      ).primaryColor.withValues(alpha: 1),
                      dividerColor: Colors.transparent,
                      labelPadding: EdgeInsets.symmetric(
                        horizontal: 11,
                        vertical: 11,
                      ),
                      unselectedLabelColor: Theme.of(context).primaryColorLight,
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                      onTap: (val) {
                        setState(() {
                          myIndex = val;
                        });
                      },
                      tabs: [
                        Text('Things To Do'),
                        Text('Flights'),
                        Text('Hotels'),
                        Text('Food'),
                      ],
                    ),
                    Flexible(
                      // fit: FlexFit.loose,
                      child: IndexedStack(
                        index: myIndex,
                        children: _tabBarScreens,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
