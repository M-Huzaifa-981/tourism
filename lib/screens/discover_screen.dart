import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/customWidgets/imageCard.dart';

class DiscoverScreen extends StatelessWidget {
  DiscoverScreen({super.key});

  final List<String> titles = [
    "Society",
    "People",
    "Living",
    "Region",
    "Culture",
    "Fashion",
    "Entertainments",
    "Food",
  ];
  final List<String> images = [
    "assets/mountains/nature.jpg",
    "assets/mountains/snakepole.jpg",
    "assets/mountains/snow.jpg",
    "assets/houses/boat.jpg",
    "assets/mountains/nature.jpg",
    "assets/mountains/snakepole.jpg",
    "assets/mountains/snow.jpg",
    "assets/mountains/nature.jpg",
  ];

  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.blue,
    Colors.yellow,
    Colors.brown,
    Colors.cyan,
    CupertinoColors.systemGreen,
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DISCOVER"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Container(
        child: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: imageCard(
                size: Size(width, height / 4.3),
                image: images[index],
                title: titles[index],
                subTitle: "Explore ${titles[index]}",
                titleSize: 44,
                subTitleSize: 12,
                linearGradient: LinearGradient(
                  colors: [colors[index].withOpacity(0.1), colors[index].withOpacity(0.9)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  transform: GradientRotation(45),
                ),
                borderRadius: 0,
              ),
            );
          },
        ),
      ),
    );
  }

}
