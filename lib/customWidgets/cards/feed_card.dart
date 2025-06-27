import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:tourism/utils/app_packages.dart';

import '../../generated/assets.dart';

Widget feedCard({
  required Size size,
  required String image,
  required List<String> hashtags,
  required badges.BadgePosition badgePosition,
  required BuildContext context,
  required VoidCallback onTap,
}) {
  double width = size.width;
  double height = size.height;

  return Container(
    width: width,
    height: height,
    margin: EdgeInsets.only(bottom: 15),
    child: Column(
      children: [
        SizedBox(height: 1),

        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(7),
          child: Text(
            hashtags.join(', '),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: badges.Badge(
                    position: badgePosition,
                    badgeContent: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 33,
                    ),
                    badgeStyle: badges.BadgeStyle(
                      shape: badges.BadgeShape.circle,
                      badgeColor: Theme.of(context).primaryColor,
                      elevation: 4,
                      padding: EdgeInsets.all(8),
                    ),
                    child: Container(
                      width: width,
                      // height: height * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(11),
                        ),
                        // color: Colors.amber,
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 15,
                  ),
                  child: Text(
                    'Pakistan\'s Best Foodie Cities',
                    style: TextStyle(
                      fontSize: 27,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 11,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(11),
                    ),
                  ),
                  child: Row(
                    children: [
                      FlutterImageStack.providers(
                        itemCount: 3,
                        itemRadius: 44,
                        totalCount: 5,
                        providers: [
                          ...List.generate(5, (index) {
                            return ExactAssetImage(
                              'assets/images/img$index.jpg',
                            );
                          }),
                        ],
                      ),
                      SizedBox(width: 6),
                      Icon(Icons.favorite, color: Colors.red, size: 16),
                      SizedBox(width: 4),
                      Text(
                        '3,123 loved this',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget myCustomFeedCard({
  required String image,
  required Size size,
  required BuildContext context,
}) {
  double width = size.width;
  double height = size.height;
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.only(bottom: 15),
    width: width,
    height: height,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 1,
            blurRadius: 20,
            offset: Offset(5, 16),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: badges.Badge(
              position: BadgePosition.bottomEnd(bottom: -20, end: 15),
              badgeContent: Icon(Icons.favorite),
              badgeStyle: badges.BadgeStyle(
                borderRadius: BorderRadius.circular(50),
                padding: EdgeInsetsGeometry.all(10),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage(Assets.restaurantImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsetsGeometry.all(10),
            // decoration: BoxDecoration(color: Colors.white),
            child: Text(
              'Pakistan best food restaurant',
              style: TextStyle(color: Colors.green, fontSize: 30),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
            ),
            padding: EdgeInsetsGeometry.all(10),
            child: Row(
              children: [
                FlutterImageStack.providers(
                  providers: [
                    ...List.generate(
                      3,
                      (index) => ExactAssetImage(Assets.profileImage[index]),
                    ),
                  ],
                  itemRadius: 40,
                  totalCount: Assets.profileImage.length,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
