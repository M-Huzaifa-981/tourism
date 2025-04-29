import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 0,
      children: [
        Text(
          '#food #restaurant #guests #tour',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 670,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Image(image: AssetImage('assets/pic1.jpeg')),
              ),
              Align(
                alignment: Alignment(0.8, 0.3),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.favorite, size: 35, color: Colors.white),
                ),
              ),
              Align(
                alignment: Alignment(0, 0.75),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Pakistan\'s Best Foodie Cities',
                    style: TextStyle(
                      fontSize: 40,
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
                    spacing: 8,
                    children: [
                      FlutterImageStack.providers(
                        itemRadius: 50,
                        providers: [
                          ExactAssetImage('assets/pic1.jpeg'),
                          ExactAssetImage('assets/pic1.jpeg'),
                          ExactAssetImage('assets/pic1.jpeg'),
                        ],
                        totalCount: 4,
                      ),

                      Text(
                        '3,123 loved this !',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,)
      ],
    );
  }
}
