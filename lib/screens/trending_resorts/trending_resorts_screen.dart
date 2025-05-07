import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

import '../../generated/assets.dart';

class TrendingResortsScreen extends StatelessWidget {
  const TrendingResortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESORTS'),
        centerTitle: true,
        actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PageView(
            physics: PageScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [MyCard(), MyCard(), MyCard(), MyCard()],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(40),
      color: Colors.transparent,
      elevation: 40,
      child: Stack(
        children: [
          Container(
            // height: 600,
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
              // color: Colors.purple,
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.center,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    Assets.resortPic8,
                    height: 700,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 700,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,

                      end: Alignment.topCenter,
                      colors: [Colors.teal, Colors.transparent],
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 100,
                  child: Text(
                    'Swat Valley',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 70,
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 10),
                      Text(
                        '4.6 (313 Reviews)',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 25,
                  bottom: 40,
                  child: Text(
                    'Khyper PakhtunKhwa',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 30,
            top: 25,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.thumb_up_alt_rounded,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 50,
            child: FlutterImageStack.providers(
              showTotalCount: false,
              itemCount: 5,
              itemRadius: 60,
              itemBorderWidth: 0.2,
              backgroundColor: Colors.white60,
              providers: [
                ExactAssetImage(Assets.assetsPic1),
                ExactAssetImage(Assets.assetsPic1),
                ExactAssetImage(Assets.assetsPic1),
                ExactAssetImage(Assets.assetsPic1),
              ],
              totalCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
