import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

Widget bookingCard({required Size size}) {
  double width = size.width;
  return badges.Badge(
    position: badges.BadgePosition.topEnd(top: -22, end: 15),
    showBadge: true,
    ignorePointer: false,
    onTap: () {},
    badgeContent: Icon(Icons.flash_on, color: Colors.white, size: 33),
    badgeStyle: badges.BadgeStyle(
      shape: badges.BadgeShape.square,
      badgeColor: Colors.red,
      borderRadius: BorderRadius.circular(100),
      elevation: 0,
    ),
    child: Container(
      width: width - 22,
      height: width / 2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 7, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(12),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: width / 99,
              children: [
                Text(
                  "Booking Available",
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // SizedBox(height: 6),
                Text(
                  "Ocean Breeze",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // SizedBox(height: 4),
                Text(
                  "Hawaii",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: width / 6,
            child: Row(
              children: [
                Container(
                  width: (width - 22) * 0.25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(11),
                    ),
                  ),
                  child: Text(
                    "4.8",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Stars + Reviews
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),

                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(11),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: List.generate(
                            4,
                            (index) =>
                                Icon(Icons.star, size: 16, color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "(512 Reviews)",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
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






