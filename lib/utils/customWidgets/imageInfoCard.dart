import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/imageCardInfo.dart';

Widget imageInfoCard({
  required ImageCardInfo imageCardInfo,
  required Size imageSize,
  double headingSize = 7,
  double titleSize = 5,
  double subTitleSize = 5,
  double borderRadius = 0,
  CrossAxisAlignment infoAlign = CrossAxisAlignment.start,
  bool isShowCardInfo = false,
  VoidCallback? onTap,
  required LinearGradient linearGradient,
}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Column(
      crossAxisAlignment: infoAlign,
      children: [
        Container(
          width: imageSize.width,
          height: imageSize.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
              image: AssetImage(imageCardInfo.image),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              gradient: linearGradient,
            ),
            padding: EdgeInsets.all(12),
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(imageCardInfo.heading != null) imageCardInfo.heading!,

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                        imageCardInfo.subtitle ?? "",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: subTitleSize,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    if (onTap != null)
                      IconButton(
                        onPressed: onTap,
                        // ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DiscoverScreen())),
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
        if (isShowCardInfo)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(
              crossAxisAlignment: infoAlign,
              children: [
                Text("⭐⭐⭐⭐"),
                Text(
                  "4.8 (512 Reviews)",
                  style: TextStyle(color: CupertinoColors.systemYellow),
                ),
                Text("Hawaii"),
              ],
            ),
          ),
      ],
    ),
  );
}
