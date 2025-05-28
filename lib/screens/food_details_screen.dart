import 'package:flutter/material.dart';
import 'package:tourism/generated/assets.dart';
import 'package:tourism/utils/constants/strings.dart';
import 'package:tourism/utils/customWidgets/buttons/discover_button.dart';

import '../utils/clippers/endborder_clipper.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Scaffold(
      body: SafeArea(
        top: false,
        child: ListView(
          children: [
            Container(
              width: width,
              // height: height,
              // color: Colors.amber.shade100,
              color: Colors.black.withValues(alpha: 0.01),
              child: Column(
                children: [
                  ClipPath(
                    clipper: EndBorderClipper(),
                    child: Container(
                      width: width,
                      height: width * 0.8,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage(Assets.foodImg7),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          AppBar(
                            backgroundColor: Colors.transparent,
                            toolbarHeight: 30,
                            foregroundColor: Colors.white,
                          ),
                          Spacer(flex: 4),
                          Text(
                            textAlign: TextAlign.left,
                            'There are more than 2,500 people who recommend this',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(flex: 1),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(11),
                    width: width,

                    // color: Colors.red.shade100,
                    child: Column(
                      spacing: 28,
                      children: [
                        Container(
                          child: Column(
                            spacing: 8,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Creamy Roasted\nButternut',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                ),
                              ),
                              Text(
                                '\$35',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink,
                                ),
                              ),
                              Text(
                                textAlign: TextAlign.justify,
                                "Indulge in a bowl of pure comfort with our Creamy Roasted Butternut Squash Pasta — a cozy blend of rich flavors and velvety texture. Slow-roasted butternut squash brings out a natural sweetness, perfectly balanced with savory garlic, herbs, and a touch of cream. Tossed with al dente pasta and finished with a sprinkle of Parmesan or vegan cheese, this dish is hearty, wholesome, and soul-satisfying. Whether you're savoring it on a chilly evening or serving it at a festive table, this autumn-inspired classic is a celebration of seasonal flavor.",
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            spacing: 8,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gallery',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // SizedBox(height: 10),
                              Container(
                                height: 100,
                                width: width,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: List.generate(
                                    6,
                                    (index) => Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 2,
                                      ),
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(11),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/foods/food_img$index.jpeg',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width,
                          child: Column(
                            spacing: 5,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recipe',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ...List.generate(
                                MyStrings.recepie.length,
                                (index) => ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      Assets.foodImages[index],
                                    ),
                                  ),
                                  title: Text(MyStrings.recepie[index]),
                                  subtitle: Text('100 mg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            textAlign: TextAlign.justify,
                            "Creamy Roasted Butternut Squash Pasta is a dish that brings together comfort, flavor, and seasonal warmth in every bite. The magic starts with butternut squash, slow-roasted to intensify its natural sweetness and create a deep, caramelized richness. Blended into a velvety sauce with garlic, onions, herbs, and cream, this golden mixture hugs each strand of pasta, delivering a silky, luxurious texture. A touch of Parmesan cheese (or a vegan alternative) adds savory depth, while hints of nutmeg or sage elevate the dish with cozy, aromatic notes. This pasta isn't just a meal — it's a comforting embrace on a chilly evening, a celebration of autumn’s best flavors, and a favorite among both plant-based and traditional food lovers.",
                          ),
                        ),
                        Container(
                          width: width,
                          child: discoverButton(
                            onTap: () {},
                            btnText: 'Recommend Recipie!',
                            context: context,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
