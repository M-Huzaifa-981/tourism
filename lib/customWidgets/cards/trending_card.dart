import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:tourism/generated/assets.dart';
import 'package:tourism/screens/feed_screen.dart';
import 'package:tourism/utils/app_packages.dart';
// import '../../../generated/assets.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({
    super.key,
    required this.titleText,
    required this.image,
    required this.onTap,
  });

  final String titleText;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Container(
      width: width,
      padding: EdgeInsets.all(15),
      child: badges.Badge(
        showBadge: true,
        position: badges.BadgePosition.topEnd(top: -15, end: 15),
        badgeStyle: badges.BadgeStyle(
          padding: EdgeInsetsGeometry.all(10),
          shape: badges.BadgeShape.square,
          badgeColor: Colors.red,
          borderRadius: BorderRadius.circular(100),
          elevation: 0,
        ),
        badgeContent: Icon(Icons.thumb_up, color: Colors.white),
        child: Container(
          width: width,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.green.withValues(alpha: 0.7),
                  Colors.transparent,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  // color: Colors.green,
                  child: Column(
                    spacing: 15,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Aston walikki',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          ...List.generate(
                            4,
                            (index) => Icon(Icons.star, color: Colors.amber),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '4.8 (512 Reviews)',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Hawaii',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        // color: Colors.blue,
                        child: Row(
                          children: [
                            Spacer(),
                            FlutterImageStack.providers(
                              itemRadius: 40,
                              itemBorderWidth: 0.5,
                              providers: [
                                ExactAssetImage(Assets.profileImage[0]),
                                ExactAssetImage(Assets.profileImage[1]),
                                ExactAssetImage(Assets.profileImage[2]),
                              ],
                              totalCount: 3,
                            ),
                            // Spacer(flex: 1,)
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

Widget trendingCard({
  required String titleText,
  required String image,
  required VoidCallback onTap,
  required BuildContext context,
  required Size size,
}) {
  // final Size size = MediaQuery.of(context).size;
  double width = size.width;
  double height = size.height;
  return Container(
    width: width,
    height: height,
    padding: EdgeInsets.all(15),
    child: badges.Badge(
      showBadge: true,
      position: badges.BadgePosition.topEnd(top: -15, end: 15),
      badgeStyle: badges.BadgeStyle(
        padding: EdgeInsetsGeometry.all(10),
        shape: badges.BadgeShape.square,
        badgeColor: Colors.red,
        borderRadius: BorderRadius.circular(100),
        elevation: 0,
      ),
      badgeContent: Icon(Icons.thumb_up, color: Colors.white),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
            filterQuality: FilterQuality.low,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.green.withValues(alpha: 0.7), Colors.transparent],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                // color: Colors.green,
                child: Column(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Aston walikki',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        ...List.generate(
                          4,
                          (index) => Icon(Icons.star, color: Colors.amber),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '4.8 (512 Reviews)',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Hawaii',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      // color: Colors.blue,
                      child: Row(
                        children: [
                          Spacer(),
                          FlutterImageStack.providers(
                            itemRadius: 40,
                            itemBorderWidth: 0.5,
                            providers: [
                              ExactAssetImage(Assets.profileImage[0]),
                              ExactAssetImage(Assets.profileImage[1]),
                              ExactAssetImage(Assets.profileImage[2]),
                            ],
                            totalCount: 3,
                          ),
                          // Spacer(flex: 1,)
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

Widget myCustomTrendCard({
  required String titleText,
  required String image,
  required VoidCallback onTap,
  required BuildContext context,
  required Size size,
}) {
  double width = size.width;
  double height = size.height;

  // final brightness = ThemeData.estimateBrightnessForColor(
  //   color ?? Colors.transparent,
  // );
  // final textColor = (brightness == Brightness.dark)
  //     ? Colors.white
  //     : Colors.orangeAccent;
  return Material(
    type: MaterialType.transparency,
    child: Container(
      margin: EdgeInsetsGeometry.all(15),
      padding: EdgeInsetsGeometry.all(1),
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(3, 8),
          ),
        ],
        // color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: badges.Badge(
        badgeContent: Icon(Icons.thumb_up, color: Colors.white,),
        badgeStyle: badges.BadgeStyle(padding: EdgeInsetsGeometry.all(10),badgeColor: Theme.of(context).primaryColor),
        position: BadgePosition.topEnd(top: -15, end: 10),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            // alignment: Alignment.bottomLeft,
            // width: width,
            // height: height,
            decoration: BoxDecoration(
              // color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ResizeImage(AssetImage(image), width: 500, height: 500)
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: width,
              height: height,
              // decoration: BoxDecoration(
              // color: Colors.red
              // gradient: LinearGradient(
              //   colors: [Colors.green, Colors.transparent],
              //   begin: Alignment.bottomLeft,
              //   end: Alignment.topRight,
              // ),
              // ),
              // padding: EdgeInsetsGeometry.all(10),
              child: Container(
                padding: EdgeInsetsGeometry.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green.withValues(alpha: 0.3),
                  // gradient: LinearGradient(
                  //   colors: [Colors.green, Colors.transparent],
                  //   begin: Alignment.bottomLeft,
                  //   end: Alignment.topRight,
                  //   tileMode: TileMode.mirror
                  // ),
                ),
                child: Column(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 15),
                    Text(
                      titleText,
                      style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        ...List.generate(
                          4,
                          (index) => Icon(Icons.star, color: Colors.amber),
                        ),
                        Text(
                          '4.9 (313 Reviews)',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Hawaii',
                      style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(flex: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlutterImageStack.providers(
                          itemRadius: 40,
                          providers: [
                            ...List.generate(
                              3,
                              (index) =>
                                  ExactAssetImage(Assets.profileImage[index]),
                            ),
                          ],
                          totalCount: 3,
                          itemBorderWidth: 0.5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
