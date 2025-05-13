import 'package:flutter/material.dart';
import "package:badges/badges.dart" as badges;
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism/screens/around_me_screen.dart';
import 'package:tourism/screens/feature_resorts_screen.dart';
import 'package:tourism/utils/app_colors.dart';
import '../models/imageCardInfo.dart';
import '../utils/customWidgets/imageInfoCard.dart';
import '../utils/customWidgets/booking_card.dart';
import 'discover_screen.dart';
import 'editor_pick_screen.dart';
import 'near_rest_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      body: Container(
        color: Colors.black12.withValues(alpha: 0.01),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                height: width / 1.5,
                padding: EdgeInsets.only(bottom: 9),
                decoration: BoxDecoration(color: AppColors.primaryColor),
                child: Column(
                  spacing: 22,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Travel Guide",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "What are you looking for?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: width / 1.1,
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Enter your keywords",
                                border: InputBorder.none,
                              ),
                            ),
                          ),

                          InkWell(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                            },
                            child: SizedBox(
                              width: 66,
                              // height: 55,
                              // color: Colors.green,
                              child: Icon(Icons.search),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 11,
                      ),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 33,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(text: "Best Places To\n"),
                            TextSpan(text: "Travel In Spring"),
                          ],
                        ),
                      ),
                    ),

                    bookingCard(size: size),

                    SizedBox(height: 22),

                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=> DiscoverScreen())); //DiscoverScreen
                              Get.to(DiscoverScreen());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.buttonColor,
                              // Button background
                              foregroundColor: Colors.white,
                              // Text/Icon color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  11,
                                ), // Rounded corners
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 14,
                              ), // Optional: taller button
                            ),
                            child: Text(
                              "Discover More",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 22),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(7),
                          child: Text(
                            "EDITORS PICKS",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(7, (index) {
                              final cardData = ImageCardInfo(
                                image: "assets/images/img$index.jpg",
                                title: "EDITORS PICKS",
                              );

                              return Container(
                                margin: EdgeInsets.all(5),
                                child: InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder:
                                    //         (context) => EditorPickScreen(),
                                    //   ),
                                    // );
                                    Get.to(EditorPickScreen());
                                  },
                                  child: imageInfoCard(
                                    imageCardInfo: cardData,
                                    imageSize: Size(155, 233),
                                    titleSize: 11,
                                    linearGradient: LinearGradient(
                                      colors: [
                                        Colors.transparent,
                                        Colors.lightBlueAccent.withOpacity(0.5),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    isShowCardInfo: true,
                                    borderRadius: 11,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 33),
                    Divider(height: 2),
                    SizedBox(height: 33),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "DISCOVER RESTAURANTS NEAR YOU",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(5, (index) {
                              return nearRestCard(size, index);
                            }),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 33),
                    Divider(height: 2),
                    SizedBox(height: 33),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(7),
                          child: Text(
                            "AUTHOR'S CHOICE MONTHLY",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(5, (index) {
                              final cardData = ImageCardInfo(
                                image: "assets/images/img$index.jpg",
                                title: "AUTHOR'S CHOICE MONTHLY",
                              );

                              return Container(
                                margin: EdgeInsets.all(5),
                                child: InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder:
                                    //         (context) =>
                                    //             FeatureResortsScreen(),
                                    //   ),
                                    // );
                                    Get.to(FeatureResortsScreen());
                                  },
                                  child: imageInfoCard(
                                    imageCardInfo: cardData,
                                    titleSize: 11,
                                    infoAlign: CrossAxisAlignment.center,
                                    imageSize: Size(155, 155),
                                    linearGradient: LinearGradient(
                                      colors: [
                                        Colors.transparent,
                                        Colors.green.withOpacity(0.5),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    isShowCardInfo: true,
                                    borderRadius: 11,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 33),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
