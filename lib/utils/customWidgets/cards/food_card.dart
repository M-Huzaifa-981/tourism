import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({required this.image, super.key, required this.onTap});

  final String image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Material(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          // padding: EdgeInsets.all(11),
          width: width,
          height: height,
          decoration: BoxDecoration(color: Colors.amber.shade100),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                // AppBar(
                //   title: Text('Restaurants'),
                //   centerTitle: true,
                //   backgroundColor: Colors.white60,
                // ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        width: width,
                        height: height,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              // AppColors.normalGreenColor.withValues(alpha: 0.6),
                              Theme.of(
                                context,
                              ).primaryColorDark.withValues(alpha: 0.7),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(flex: 3),
                            Expanded(
                              flex: 7,
                              child: Text(
                                overflow: TextOverflow.fade,

                                'Creamy\nRoasted\nButternut\nSquash\nPasta',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            // Spacer(flex: 1),
                            Expanded(
                              flex: 2,
                              child: Text(
                                textAlign: TextAlign.justify,
                                'There are more than 2,500 people who recommend Creamy Roasted Butternut Squash Pasta',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            // Spacer(flex: 1),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
