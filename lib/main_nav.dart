import '../utils/app_packages.dart';


class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  // final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    TrendingResortsScreen(),
    FeedScreen(),
    EditorPickScreen(),
    TopDestinationsScreen(),
  ];

  navigateToScreen(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: IndexedStack(clipBehavior: Clip.antiAlias,  index: _currentIndex, children: _screens),
      bottomNavigationBar: ConvexAppBar(
        key: ValueKey(_currentIndex),
        initialActiveIndex: _currentIndex,
        backgroundColor: Theme.of(context).primaryColorDark,
        top: -8,
        curveSize: 33,
        activeColor: Colors.white,
        disableDefaultTabController: true,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.hotel, title: 'Hotel'),
          TabItem(icon: Icons.feed_rounded, title: 'Feed'),
          TabItem(icon: Icons.photo_album_outlined, title: 'Editors'),
          TabItem(icon: Icons.beach_access_rounded, title: 'Resorts'),
        ],
        onTap: navigateToScreen,
      ),
    );
  }
}
