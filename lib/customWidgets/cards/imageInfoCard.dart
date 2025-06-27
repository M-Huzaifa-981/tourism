import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/utils/constants/app_colors.dart';

import '../../../models/imageCardInfo.dart';

Widget imageInfoCard({
  required ImageCardInfo imageCardInfo,
  required Size imageSize,
  double headingSize = 15,
  double titleSize = 5,
  double subTitleSize = 5,
  double borderRadius = 0,
  CrossAxisAlignment infoAlign = CrossAxisAlignment.start,
  bool isShowCardInfo = false,
  VoidCallback? onTap,
   LinearGradient? linearGradient,
}) {
  return Column(
    crossAxisAlignment: infoAlign,
    children: [
      Container(
        width: imageSize.width,
        height: imageSize.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(
            image: ResizeImage(
              AssetImage(imageCardInfo.image),
              width: 300,
              height: 200,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient: linearGradient,
            color: Colors.lightBlueAccent.withValues(alpha: 0.3)
          ),
          padding: EdgeInsets.all(12),
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (imageCardInfo.heading != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        imageCardInfo.heading ?? "",
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: headingSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

              if (imageCardInfo.subtitle != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        imageCardInfo.subtitle ?? "",
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: subTitleSize,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    if (onTap != null)
                      InkWell(
                        onTap: onTap,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: subTitleSize + 5,
                        ),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
      // if (isShowCardInfo)
        Visibility(
          visible: isShowCardInfo,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(
              // spacing: 4,
              crossAxisAlignment: infoAlign,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    4,
                    (i) => Icon(
                      Icons.star_border,
                      color: AppColors.darkOrangeColor,
                    ),
                  ),
                ),
                Text(
                  "4.8 (512 Reviews)",
                  style: TextStyle(color: AppColors.darkOrangeColor),
                ),
                Text("Hawaii"),
              ],
            ),
          ),
        ),
    ],
  );
}
