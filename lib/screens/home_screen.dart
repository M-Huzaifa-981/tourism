import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/screens/around_me_screen.dart';
import 'package:tourism/screens/feature_resorts_screen.dart';
import 'package:tourism/utils/themes/themes.dart';

import '../generated/assets.dart';
import '../models/imageCardInfo.dart';
import '../utils/clippers/home_clipper.dart';
import '../utils/constants/app_colors.dart';
import '../utils/customWidgets/buttons/discover_button.dart';
import '../utils/customWidgets/cards/booking_card.dart';
import '../utils/customWidgets/cards/imageInfoCard.dart';
import 'discover_screen.dart';
import 'editor_pick_screen.dart';
import 'favorite_resort_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Material(
      child: Material(
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: width / 1.3,
                  child: Stack(
                    children: [
                      ClipPath(
                        clipBehavior: Clip.antiAlias,
                        clipper: HomeClipper(),
                        child: Container(
                          width: width,
                          // height: width / 1.1,
                          decoration: BoxDecoration(
                            // color: Colors.amber.withOpacity(0.9),
                            gradient: LinearGradient(
                              colors: [
                                // AppColors.normalGreenColor,
                                // AppColors.darkGreenColor,
                                // MyCustomThemes.green3,
                                // MyCustomThemes.light_green2,
                                // MyCustomThemes.light_green1,
                                Theme.of(context).primaryColorLight,
                                Theme.of(context).primaryColorDark
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        // height: width / 1.6,
                        // decoration: BoxDecoration(color: Colors.red),
                        child: Column(
                          spacing: 12,
                          mainAxisAlignment: MainAxisAlignment.center,
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
                              width: width / 1.2,
                              padding: EdgeInsets.symmetric(horizontal: 7),
                              decoration: BoxDecoration(
                                color: Theme.of(context).cardColor.withValues(alpha: 0.5),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: "Enter your keywords",
                                        labelStyle: TextStyle(
                                          color: AppColors.whiteColor,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
        
                                  InkWell(
                                    borderRadius: BorderRadius.circular(50),
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                    },
                                    child: Container(
                                      width: 55,
                                      height: 55,
                                      // color: Colors.green,
                                      child: Icon(
                                        Icons.search,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
        
                            // SizedBox(height: 15,)
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
                        // color: Colors.yellow,
                        padding: EdgeInsets.symmetric(horizontal: 11),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              color: MyCustomThemes.light_green1,
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
        
                      bookingCard(size: size, context: context),
        
        
                      SizedBox(height: 22),
        
                      Row(
                        children: [
                          Expanded(
                            child: discoverButton(
                              btnText: 'Discover More',
                              context: context,
                              onTap: () {
                                Get.to(DiscoverScreen());
                              },
                            ),
                          ),
                        ],
                      ),
        
                      SizedBox(height: 22),
        
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(7),
                              child: Text(
                                "EDITORS PICKS",
                                style: TextStyle(
                                  // color: Colors.black,
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
                                    image: Assets.restaurantsImage[index],
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
                                            Colors.lightBlueAccent.withValues(alpha: 0.5),
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
                      ),
        
                      SizedBox(height: 33),
                      Divider(height: 2),
                      SizedBox(height: 33),
        
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                "DISCOVER RESTAURANTS NEAR YOU",
                                style: TextStyle(
                                  // color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
        
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(5, (index) {
                                  return GestureDetector(onTap: (){
                                    Get.to(AroundMeScreen());
                                  }, child: nearRestCard(size, index, context));
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
        
                      SizedBox(height: 33),
                      Divider(height: 2),
                      SizedBox(height: 33),
        
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                        //         (context) => FeatureResortsScreen(),
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
                      ),
        
                      SizedBox(height: 33),
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

  Widget nearRestCard(Size size, int index, context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(5),
        width: size.width / 1.5,
        height: size.width / 1.2,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img$index.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  spacing: 0,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("The Ledbury"),
                    Text("127 Ledbury Road, London W11 2AQ"),
                    Divider(),
                    Text("There are more than 25k people"),
                    Text("recommend this.", style: TextStyle(fontSize: 12),),
                    SizedBox(height: 10,)
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
