import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/screens/all_resorts_screen.dart';
import 'package:tourism/screens/food_screen.dart';
import 'package:tourism/screens/top_destinations.dart';
import 'package:tourism/screens/top_destinations_details_screen.dart';
import 'package:tourism/screens/trending_resorts_screen.dart';
import 'package:tourism/utils/customWidgets/cards/carousel.dart';

import '../generated/assets.dart';
import '../models/imageCardInfo.dart';
import '../utils/clippers/home_clipper.dart';
import '../utils/constants/app_colors.dart';
import '../utils/customWidgets/buttons/discover_button.dart';
import '../utils/customWidgets/cards/imageInfoCard.dart';
import 'favorite_resort_screen.dart';

class FeatureResortsScreen extends StatelessWidget {
  const FeatureResortsScreen({super.key});

  static final String imagePath = "assets/images";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            AppBar(
              centerTitle: true,
              title: Text("RESORTS"),
              // leading: IconButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   icon: Icon(Icons.arrow_back_ios),
              // ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(7),
                          child: Text(
                            "Featured Resorts",
                            style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontSize: 33,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: width,
                      height: width / 1.7,

                      // color: Colors.blue,
                      child: CarouselSlider.builder(
                        // items: imgList,
                        options: CarouselOptions(
                          // aspectRatio: 16 / 9,
                          enlargeCenterPage: true,
                          animateToClosest: true,
                          enlargeFactor: 0.4,
                          height: width / 1.3,
                          clipBehavior: Clip.antiAlias,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 5),
                          viewportFraction: 0.55,
                        ),
                        itemCount: Assets.resortImages.length,
                        itemBuilder: (
                          BuildContext context,
                          int index,
                          int realIndex,
                        ) {
                          // return Column(
                          //   children: [
                          //     Expanded(
                          //       child: Container(
                          //         width: width,
                          //         margin: EdgeInsets.symmetric(
                          //             horizontal: width * 0.05,
                          //             vertical: 20
                          //         ),
                          //         decoration: BoxDecoration(
                          //           boxShadow: [
                          //             BoxShadow(
                          //                 color: Colors.blue.withValues(alpha: 0.55),
                          //                 spreadRadius: 1,
                          //                 blurRadius: 22,
                          //                 offset: Offset(0, 7)
                          //             ),
                          //           ],
                          //           borderRadius: BorderRadius.circular(11),
                          //           image: DecorationImage(
                          //             image: AssetImage(Assets.images[index]),
                          //             fit: BoxFit.cover,
                          //           ),
                          //         ),
                          //         foregroundDecoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(11),
                          //           gradient: LinearGradient(
                          //             colors: [
                          //               AppColors.normalGreenColor.withValues(
                          //                 alpha: 0.4,
                          //               ),
                          //               Colors.transparent,
                          //             ],
                          //             begin: Alignment.bottomCenter,
                          //             end: Alignment.topCenter,
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //     Text('data'),
                          //
                          //   ],
                          // );
                          final cardData = ImageCardInfo(
                            image:
                                Assets
                                    .resortImages[index], // "$imagePath/img$index.jpg",
                          );
                          return Container(
                            width: 200,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 0),
                            child: InkWell(
                              onTap: () {
                                // Navigator.pushReplacement(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => TrendingResortsScreen(),
                                //   ),
                                // );
                                // DiscoverScreen
                                Get.to(TopDestinationsScreen());
                              },
                              child: imageInfoCard(
                                onTap: () {
                                  Get.to(TopDestinationsScreen());
                                },
                                imageCardInfo: cardData,
                                imageSize: Size(width / 1.4, width / 2.8),
                                linearGradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                isShowCardInfo: true,
                                infoAlign: CrossAxisAlignment.center,
                                borderRadius: 9,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    // Container(
                    //   // height: width / 1.65,
                    //   child: SingleChildScrollView(
                    //     scrollDirection: Axis.horizontal,
                    //     // shrinkWrap: true,
                    //     child: Row(
                    //       children: List.generate(Assets.images.length, (
                    //         index,
                    //       ) {
                    //         final cardData = ImageCardInfo(
                    //           image:
                    //               Assets
                    //                   .images[index], // "$imagePath/img$index.jpg",
                    //         );
                    //         return Container(
                    //           margin: EdgeInsets.symmetric(horizontal: 15),
                    //           child: InkWell(
                    //             onTap: () {
                    //               Navigator.pushReplacement(
                    //                 context,
                    //                 MaterialPageRoute(
                    //                   builder:
                    //                       (context) => TrendingResortsScreen(),
                    //                 ),
                    //               ); //DiscoverScreen
                    //             },
                    //             child: imageInfoCard(
                    //               imageCardInfo: cardData,
                    //               imageSize: Size(width / 1.5, width / 2.5),
                    //               linearGradient: LinearGradient(
                    //                 colors: [
                    //                   Colors.transparent,
                    //                   Colors.transparent,
                    //                 ],
                    //                 begin: Alignment.centerLeft,
                    //                 end: Alignment.centerRight,
                    //               ),
                    //               isShowCardInfo: true,
                    //               borderRadius: 9,
                    //             ),
                    //           ),
                    //         );
                    //       }),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: 22),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(2, (index) {
                          final cardData = ImageCardInfo(
                            image: "$imagePath/img$index.jpg",
                          );

                          return Container(
                            margin: EdgeInsets.all(5),
                            child: imageInfoCard(
                              imageCardInfo: cardData,
                              infoAlign: CrossAxisAlignment.center,
                              imageSize: Size(width / 2.5, width / 2.5),
                              linearGradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              isShowCardInfo: true,
                              borderRadius: 7,
                            ),
                          );
                        }),
                      ),
                    ),

                    SizedBox(height: 22),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 11),
                      child: Row(
                        children: [
                          // Container(),
                          Expanded(
                            child: discoverButton(
                              btnText: 'Discover More',
                              context: context,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AllResortsScreen(),
                                  ),
                                ); //DiscoverScreen
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 55),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(7),
                          child: Text(
                            "Featured Restaurants",
                            style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontSize: 33,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    myCarouselSlider(
                      size: Size(width, height),
                      imageList: Assets.foodImages,
                      coverImage: Assets.restaurantImage,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 11,
                        vertical: 11,
                      ),
                      child: Row(
                        children: [
                          Container(),
                          Expanded(
                            child: discoverButton(
                              btnText: 'Discover More',
                              context: context,
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => AllResortsScreen(),
                                //   ),
                                // ); //DiscoverScreen
                                Get.to(FoodScreen());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 55),

                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  "AUTHOR'S CHOICE MONTHLY",
                                  style: TextStyle(
                                    // color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              Assets.profileImage.length,
                              (index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 2,
                                    vertical: 9,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 88,
                                        height: 88,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            100,
                                          ),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              Assets.profileImage[index],
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.all(7),
                                        child: Text(
                                          "Renato Hardy",
                                          style: TextStyle(
                                            // color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 33),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(11),
                          child: Text(
                            "TOP RESORT'S BY COMPANY",
                            style: TextStyle(
                              // color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 7,
                            vertical: 11,
                          ),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, // 2 cards per row
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5,
                                  childAspectRatio: 4 / 6,
                                ),
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              final cardData = ImageCardInfo(
                                image: "$imagePath/img$index.jpg",
                              );

                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) =>
                                              TopDestinationsDetailScreen(),
                                    ),
                                  );
                                },
                                child: Center(
                                  child: imageInfoCard(
                                    imageCardInfo: cardData,
                                    infoAlign: CrossAxisAlignment.center,
                                    imageSize: Size(width / 2.2, width / 2.2),
                                    linearGradient: LinearGradient(
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    isShowCardInfo: true,
                                    borderRadius: 11,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
