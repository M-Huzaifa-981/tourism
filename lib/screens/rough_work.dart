import 'package:flutter/material.dart';

import '../generated/assets.dart';

class RoughWork extends StatelessWidget {
  const RoughWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // height: double.infinity,
            // width: double.infinity,
            child: Image(image: AssetImage(Assets.assetsPic4)),
          ),
          Align(
            alignment: Alignment(0,-0.4),
            child: Container(
              width: double.infinity,
              // height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12)
              ),
              child: ListView(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                  Text('lorem', style: TextStyle(fontSize: 30),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
