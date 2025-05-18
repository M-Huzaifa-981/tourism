import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tourism/screens/editor_pick_screen.dart';
import 'package:tourism/screens/feature_resorts_screen.dart';
import 'package:tourism/screens/feed_screen.dart';
import 'package:tourism/screens/home_screen.dart';
import 'package:tourism/screens/restaurant_menu_screen.dart';
import 'package:tourism/utils/constants/app_colors.dart';



class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    RestaurantMenuScreen(),
    FeedScreen(),
    EditorPickScreen(),
    FeatureResortsScreen(),
  ];

  navigateToScreen(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: ConvexAppBar(
        key: ValueKey(_currentIndex),
        initialActiveIndex: _currentIndex,
        backgroundColor: AppColors.greenColor,
        top: -8,
        curveSize: 33,
        activeColor: Colors.white,
        disableDefaultTabController: true,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.restaurant_menu, title: 'Hotel'),
          TabItem(icon: Icons.feed_rounded, title: 'Feed'),
          TabItem(icon: Icons.photo_album_outlined, title: 'Editors'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: navigateToScreen,
      ),
    );
  }
}
