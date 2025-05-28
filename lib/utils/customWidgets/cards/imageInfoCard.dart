import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/utils/constants/app_colors.dart';

import '../../../models/imageCardInfo.dart';

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
                if (imageCardInfo.heading != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
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
        if (isShowCardInfo)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(
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
      ],
    ),
  );
}
