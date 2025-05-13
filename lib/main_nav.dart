import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/screens/editor_pick_screen.dart';
import 'package:tourism/screens/feature_resorts_screen.dart';
import 'package:tourism/screens/feed_screen.dart';
import 'package:tourism/screens/home_screen.dart';
import 'package:tourism/screens/profile_screen.dart';
import 'package:tourism/screens/restaurant_menu_screen.dart';
import 'package:tourism/utils/app_colors.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    FeatureResortsScreen(),
    FeedScreen(),
    RestaurantMenuScreen(),
    // EditorPickScreen(),
    ProfileScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        shadowColor: AppColors.primaryColor,
        elevation: 10,
        backgroundColor: Colors.white,
        // top: -11,
        // height: 45,
        // cornerRadius: 12,
        top: -18,
        style: TabStyle.fixedCircle,
        activeColor: Colors.green,
        color: Colors.grey,
        disableDefaultTabController: true,
        // style: TabStyle.flip,
        items: const [
          TabItem( icon: Icons.home, title: 'Home', ),
          TabItem(icon: Icons.hotel, title: 'Hotel'),
          TabItem(icon: Icons.newspaper, title: 'Feed'),
          TabItem(icon: Icons.restaurant , title: 'Restaurants'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (int i) {
            setState(() {
              _selectedIndex = i;
            });
        },
      ),
    );
  }
}
