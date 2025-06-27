import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tourism/screens/booking_home.dart';
import 'package:tourism/screens/booking_screen.dart';

import '../utils/app_packages.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class MainNav extends ConsumerWidget {
  MainNav({super.key});

  // final PageController _pageController = PageController();
  final int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const TrendingHotelsScreen(),
    const FeedScreen(),
    const EditorPickScreen(),
    const BookingHomeScreen()
    // const TopDestinationsScreen(),
  ];

  navigateToScreen(int index) {


  }

  // @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexVariable = ref.watch(indexProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: IndexedStack(
        index: indexVariable,
        children: _screens,
        clipBehavior: Clip.none,
      ),
      bottomNavigationBar: ConvexAppBar(
        // key: ValueKey(_currentIndex),
        initialActiveIndex: _currentIndex,
        backgroundColor: Theme.of(context).primaryColorLight,
        top: -7,
        curveSize: 44,
        activeColor: Colors.white,
        disableDefaultTabController: true,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.hotel, title: 'Hotel'),
          TabItem(icon: Icons.feed_rounded, title: 'Feed'),
          TabItem(icon: Icons.photo_album_outlined, title: 'Editors'),
          TabItem(icon: Icons.airplane_ticket_rounded, title: 'Booking'),
        ],
        onTap: (int index){
          ref.read(indexProvider.notifier).state = index;
        },
      ),
    );
  }
}
