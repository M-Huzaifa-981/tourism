import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF13a682),
      body: Column(
        spacing: 6,
        children: [
          // Text('data'),
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
                        ImageStack(
                          imageRadius: 50,
                          imageList: [
                            'assets/pic1.jpeg',
                            'assets/pic1.jpeg',
                            'assets/pic1.jpeg',
                          ],
                          totalCount: 4,
                        ),
                        Text('3,123 loved this !',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
