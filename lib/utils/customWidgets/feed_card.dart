import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({super.key, required this.picNo});
  final int picNo;

  @override
  Widget build(BuildContext context) {
  Random random = Random();
  int myRandomNo = random.nextInt(8);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 7,
      children: [
        // SizedBox(height: 10,),
        Text(
          '#food #restaurant #guests #tour',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.59,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Image(image: AssetImage('assets/images/img$picNo.jpg'), fit: BoxFit.cover,height: 420,),
              ),
              Align(
                alignment: Alignment(0.9, 0.3),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.favorite, size: 35, color: Colors.white),
                ),
              ),
              Align(
                alignment: Alignment(0, 0.7),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Pakistan\'s Best Foodie Cities',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0XFF39c8a5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 1),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 9),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    spacing: 8,
                    children: [
                      FlutterImageStack.providers(
                        itemRadius: 45,
                        itemBorderColor: Colors.white24,
                        showTotalCount: false,
                        backgroundColor: Colors.blue,
                        itemBorderWidth: 0.3,
                        providers: [
                          ...List.generate(4, (index)=>
                          ExactAssetImage('assets/images/img$myRandomNo.jpg'),
                          )
                          // ExactAssetImage('assets/images/img1.jpg'),
                          // ExactAssetImage('assets/images/img1.jpg'),
                        ],
                        totalCount: 4,
                      ),

                      Text(
                        '3,123 loved this !',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
