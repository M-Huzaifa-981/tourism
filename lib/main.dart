import 'package:flutter/material.dart';
import 'package:tourism/screens/feed_screen.dart';
import 'package:tourism/screens/home_screen.dart';
import 'package:tourism/screens/feed_screen/feed_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      // home: DefaultTabController(
      //     length: 4,
      // child: FeedScreen()
      // ),
    );
  }
}
