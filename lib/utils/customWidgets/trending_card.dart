import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

import '../../generated/assets.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      // margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.1),
      height: MediaQuery.of(context).size.height*0.86,
      decoration: BoxDecoration(),
      child: Material(
        elevation: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.transparent,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(Assets.assetsPic0),
                  height: 700,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Container(
                height: 700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xff39c8a5).withValues(alpha: 0.7),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 200,
              left: 15,
              child: Text(
                'Swat Valley',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),

            Positioned(
              bottom: 170,
              left: 15,
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow,),
                  Icon(Icons.star, color: Colors.yellow,),
                  Icon(Icons.star, color: Colors.yellow,),
                  Icon(Icons.star, color: Colors.yellow,),
                  Icon(Icons.star, color: Colors.yellow,),
                  SizedBox(width: 10),
                  Text(
                    '4.2 (313 Reviews)',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 135,
              left: 15,
              child: Text(
                'KPK',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 15,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(Icons.bolt_rounded, color: Colors.white, size: 60),
              ),
            ),
            Align(
              alignment: Alignment(-0.7,0.95),
              child: FlutterImageStack.providers(
                // itemBorderColor: Colors.transparent,
                itemRadius: 80,
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
      ),
    );
  }
}
