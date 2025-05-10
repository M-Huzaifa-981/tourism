import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/screens/editor_pick_screen.dart';
import 'package:tourism/screens/feature_resorts_screen.dart';
import 'package:tourism/screens/feed_screen.dart';
import 'package:tourism/screens/home_screen.dart';
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
    RestaurantMenuScreen(),
    FeedScreen(),
    EditorPickScreen(),
    FeatureResortsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        shadowColor: AppColors.primaryColor,
        elevation: 10,
        backgroundColor: Colors.white,
        top: -11,
        activeColor: Colors.green,
        color: Colors.black,
        disableDefaultTabController: true,
        // style: TabStyle.flip,
        items: const [
          TabItem(icon: Icons.home, title: 'Home', ),
          TabItem(icon: Icons.restaurant_menu, title: 'Hotel'),
          TabItem(icon: Icons.feed_rounded, title: 'Feed'),
          TabItem(icon: Icons.photo_album_outlined , title: 'Editors'),
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
