import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

import '../../../generated/assets.dart';
import '../../constants/app_colors.dart';

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
    double height = size.height;
    double width = size.width;

    return GestureDetector(
      onTap: onTap,
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Container(
          // color: Colors.black.withValues(alpha: 0.03),
          width: width,
          height: height,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: width,
                  height: height,
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 15,
                    bottom: 10,
                  ),
                  // decoration: BoxDecoration(color: Colors.blue.shade200),
                  child: Column(
                    children: [
                      Expanded(
                        child: badges.Badge(
                          position: badges.BadgePosition.topEnd(
                            end: 10,
                            top: -15,
                          ),
                          badgeContent: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 33,
                          ),
                          badgeStyle: badges.BadgeStyle(
                            shape: badges.BadgeShape.circle,
                            // badgeColor: Colors.redAccent,
                            badgeColor: Theme.of(context).primaryColorDark,
                            elevation: 4,
                            padding: EdgeInsets.all(8),
                          ),
                          child: Container(
                            width: width,
                            height: height,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.5),
                                  blurRadius: 8,
                                  offset: Offset(4, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(22),
                                bottom: Radius.circular(22),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(image),
                              ),
                            ),
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              child: Stack(
                                children: [
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    width: width,
                                    height: height,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColors.primaryColor.withValues(
                                            alpha: 0.5,
                                          ),
                                          Colors.transparent,
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                    ),
                                    // child: Text('data'),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      spacing: 20,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          titleText,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            ...List.generate(
                                              5,
                                              (index) => Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                            ),
                                            SizedBox(width: 30),
                                            Text(
                                              'Reviews',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Hawaii',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            FlutterImageStack.providers(
                                              // itemBorderColor: Colors.transparent,
                                              itemRadius: width / 9,
                                              providers: List.generate(
                                                5,
                                                (index) => ExactAssetImage(
                                                  Assets.images[index],
                                                ),
                                              ),
                                              totalCount: 4,
                                              itemBorderColor:
                                                  AppColors.primaryColor,
                                              itemBorderWidth: 0.5,
                                              itemCount: 4,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
* Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      // margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.1),
      height: MediaQuery.of(context).size.height*0.86,
      decoration: BoxDecoration(),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomersGallery()));
        },
        child: Material(
          elevation: 50,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.transparent,
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(Assets.assetsPic0),
                    height: 700,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0),
                child: Container(
                  height: 700,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xff39c8a5).withValues(alpha: 0.7),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 200,
                left: 15,
                child: Text(
                  'Swat Valley',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),

              Positioned(
                bottom: 170,
                left: 15,
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    SizedBox(width: 10),
                    Text(
                      '4.2 (313 Reviews)',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                bottom: 135,
                left: 15,
                child: Text(
                  'KPK',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 15,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.bolt_rounded, color: Colors.white, size: 60),
                ),
              ),
              Align(
                alignment: Alignment(-0.7,0.95),
                child: FlutterImageStack.providers(
                  // itemBorderColor: Colors.transparent,
                  itemRadius: 80,
                  providers: [
                    ExactAssetImage(Assets.assetsPic1),
                    ExactAssetImage(Assets.assetsPic1),
                    ExactAssetImage(Assets.assetsPic1),
                    ExactAssetImage(Assets.assetsPic1),
                  ],
                  totalCount: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    )*/
