import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tourism/utils/themes/themes.dart';
import '../../utils/constants/app_colors.dart';
import '../clippers/home_clipper.dart';

Widget myCarouselSlider({
  required Size size,
  required List<String> imageList,
  required String coverImage,
  VoidCallback? onTap,
}) {
  double width = size.width;
  double height = size.height;
  return Container(
    width: width,
    height: width / 0.95,
    // color: Colors.amber.shade100,
    child: Stack(
      clipBehavior: Clip.antiAlias,
      children: [
        PhysicalShape(
          clipper: HomeClipper(),
          // clipBehavior: Clip.antiAlias,
          color: Colors.transparent,
          shadowColor: AppColors.normalGreenColor.withValues(alpha: 0.5),
          elevation: 15,
          child: ClipPath(
            clipper: HomeClipper(),
            child: Container(
              width: width,
              height: width * 0.85,
              padding: EdgeInsets.only(top: width * 0.05),
              decoration: BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(coverImage),
                  fit: BoxFit.cover,
                ),
              ),

              alignment: Alignment.topCenter,
              child: Container(
                width: width,
                height: height,
                // padding: EdgeInsets.only(top: width/10),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [MyCustomThemes.light_green1, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment(0, -0.3),
                  ),
                ),
                child: Text(
                  textAlign: TextAlign.justify,
                  'Top 10 Favorite\nDestination Resorts',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ),

        Container(
          width: width,
          height: width + 15,
          // color: Colors.blue,
          alignment: Alignment.bottomCenter,
          child: CarouselSlider.builder(
            // items: imgList,
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
              animateToClosest: true,
              enlargeFactor: 0.35,
              height: width / 1.8,
              clipBehavior: Clip.antiAlias,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              viewportFraction: 0.55,
            ),
            itemCount: imageList.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return GestureDetector(
                onTap: onTap,
                child: Container(
                  width: width,
                  margin: EdgeInsets.symmetric(
                    horizontal: width * 0.05,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withValues(alpha: 0.55),
                        spreadRadius: 1,
                        blurRadius: 22,
                        offset: Offset(0, 7),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(11),
                    image: DecorationImage(
                      image: AssetImage(imageList[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.normalGreenColor.withValues(alpha: 0.4),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}