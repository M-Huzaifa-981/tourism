import 'package:flutter/material.dart';

Widget imageCard({
  required Size size,
  required String image,
  required String title,
  required String subTitle,
  required double titleSize,
  required double subTitleSize,
  required LinearGradient linearGradient,
  required double borderRadius,
  VoidCallback? onTap
}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
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
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: titleSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: subTitleSize,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                if(onTap!=null)IconButton(
                  onPressed: onTap,
                  // ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DiscoverScreen())),
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}