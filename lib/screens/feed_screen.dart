import 'package:flutter/material.dart';
import 'package:tourism/utils/constants/app_colors.dart';

import 'feed_screen/first_screen.dart';
import 'feed_screen/fourth_screen.dart';
import 'feed_screen/second_screen.dart';
import 'feed_screen/third_screen.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          AppBar(
            centerTitle: true,
            backgroundColor: AppColors.normalGreenColor,
            title: Text('FEED',style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.whiteColor)),
            // leading: IconButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   icon: Icon(Icons.arrow_back_ios),
            // ),
            actions: [
              IconButton(
                onPressed: null,
                icon: Icon(Icons.search),
              ),
            ],
          ),


          Expanded(
            child: Container(
              color: AppColors.normalGreenColor,
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
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500, color: AppColors.whiteColor),
                      ),
                    ),
                    TabBar(
                      // indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: AppColors.darkGreenColor,
                      indicatorColor: AppColors.darkGreenColor,
                      dividerColor: Colors.transparent,
                      labelPadding: EdgeInsets.symmetric(
                        horizontal: 11,
                        vertical: 11,
                      ),
                      unselectedLabelColor: AppColors.whiteColor,
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                      tabs: [
                        Text('Things To Do'),
                        Text('Flights'),
                        Text('Hotels'),
                        Text('Food'),
                      ],
                    ),
                    Flexible(
                      // fit: FlexFit.loose,
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
            ),
          ),




        ],
      ),
    );
  }
}
