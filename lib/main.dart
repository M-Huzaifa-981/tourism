import 'package:flutter/material.dart';
import 'package:tourism/screens/feed_screen.dart';
<<<<<<< HEAD
import 'package:tourism/screens/home_screen.dart';
=======
>>>>>>> 2f39aadfc499f7918ac3f75011259c7de3cc8348

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      home: FeedScreen(),
=======
      home: DefaultTabController(
          length: 4,
      child: FeedScreen()),
>>>>>>> 2f39aadfc499f7918ac3f75011259c7de3cc8348
    );
  }
}
