import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/screens/customers_gallery.dart';
import 'package:tourism/screens/top_destinations_details_screen.dart';
import 'package:tourism/utils/customWidgets/buttons/discover_button.dart';
import 'package:tourism/utils/customWidgets/cards/carousel.dart';

import '../generated/assets.dart';

class TopDestinationsScreen extends StatelessWidget {
  const TopDestinationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Material(
      clipBehavior: Clip.antiAlias,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Container(
        width: width,
        // height: height,
        // color: Colors.black.withValues(alpha: 0),
        child: ListView(
          dragStartBehavior: DragStartBehavior.start,
          clipBehavior: Clip.antiAlias,
          children: [
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                myCarouselSlider(
                  size: Size(width, height),
                  imageList: Assets.resortImages,
                  coverImage: Assets.resort3,
                ),
                Container(
                  padding: EdgeInsets.all(11),
                  child: Column(
                    spacing: 15,
                    children: [
                      Container(
                        // color: Colors.pink.shade300,
                        child: Column(
                          spacing: 10,
                          children: [
                            Text(
                              'Sapphire Seas',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ...List.generate(
                                  4,
                                  (index) => Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.amber,
                                  ),
                                ),
                                SizedBox(width: 8),
                                // spacing between stars and text
                                Text('Review', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                            Text('Hawaii'),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          spacing: 8,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Overview',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.justify,
                              "In a world where every interaction leaves a trace, the smallest moments often shape the greatest stories. Whether it's a shared glance, a silent pause, or a spark of curiosity, meaning unfolds quietly — waiting to be noticed. This app is a space to capture that essence: the quiet significance in everyday experience.",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          spacing: 5,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Recipie',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.justify,
                              "Every recipe tells a story — of cultures shared, families gathered, and flavors passed down through generations. This space is more than just instructions; it's a canvas for creativity, a celebration of taste, and an invitation to turn simple ingredients into unforgettable moments. Start where you are, cook what you love, and make it yours.",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: width,
                        height: width / 1.7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Gallery',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    7,
                                    (index) => GestureDetector(
                                      onTap: () {
                                        Get.to(CustomersGallery());
                                      },
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 4,
                                        ),
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              Assets.images[index],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: width,
                        child: discoverButton(
                          onTap: () {
                            Get.to(TopDestinationsDetailScreen());
                          },
                          btnText: 'View Details',
                          context: context,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
