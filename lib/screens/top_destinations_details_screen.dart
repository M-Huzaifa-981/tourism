import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/generated/assets.dart';
import 'package:tourism/main_nav.dart';
import 'package:tourism/utils/customWidgets/cards/booking_card.dart';

import '../utils/customWidgets/buttons/discover_button.dart';

class TopDestinationsDetailScreen extends StatelessWidget {
  const TopDestinationsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Container(
        width: width,
        // height: height,
        color: Colors.black.withValues(alpha: 0.03),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ),
                child: Container(
                  width: width,
                  height: height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.red.shade300,
                    image: DecorationImage(
                      image: AssetImage(Assets.assetsPic5),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      AppBar(
                        title: Text('Resorts'),
                        centerTitle: true,
                        // backgroundColor: Colors.white60,
                      ),
                      Spacer(flex: 10),
                      Text(
                        '#4 of top 10 Favorite\nDestination Resorts',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          letterSpacing: 1.5,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Spacer(flex: 7),
                      bookingCard(
                        size: Size(width, height / 3),
                        context: context,
                      ),
                      Spacer(flex: 2),
                      Row(
                        children: List.generate(4, (index) {
                          return Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 1),
                              width: width,
                              height: width / 4.5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(Assets.images[index]),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(11),
                child: Column(
                  spacing: 15,
                  children: [
                    Container(
                      width: width,
                      // decoration: BoxDecoration(color: Colors.pink.shade100),
                      child: Column(
                        spacing: 8,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.justify,
                            'Step into paradise where luxury meets nature. Our handpicked collection of top resorts offers more than just a stay — they promise an experience. From the serene beaches of the Maldives to the lush hills of Bali and the majestic peaks of the Swiss Alps, each resort is a world of its own. ',
                          ),
                          Container(
                            child: Column(
                              spacing: 8,
                              children: [
                                Row(
                                  spacing: 10,
                                  children: [
                                    ...List.generate(
                                      4,
                                      (index) => Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Text(
                                      'Location',
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                  ],
                                ),
                                Row(
                                  spacing: 10,
                                  children: [
                                    ...List.generate(
                                      4,
                                      (index) => Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Text(
                                      'Location',
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                  ],
                                ),
                                Row(
                                  spacing: 10,
                                  children: [
                                    ...List.generate(
                                      4,
                                      (index) => Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Text(
                                      'Location',
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                  ],
                                ),
                                Row(
                                  spacing: 10,
                                  children: [
                                    ...List.generate(
                                      4,
                                      (index) => Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Text(
                                      'Location',
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.justify,
                            'Immerse yourself in tranquil infinity pools, world-class cuisine, spa retreats, and breathtaking views that leave a lasting imprint on your soul. Whether you seek adventure or pure relaxation, these resorts redefine comfort and elegance at every turn.',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width,
                      height: width / 1.7,
                      // color: Colors.green.shade100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Restaurant\'s Gallery',
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
                                  (index) => Container(
                                    margin: EdgeInsets.symmetric(horizontal: 4),
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(Assets.images[index]),
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
                      child: Column(
                        spacing: 8,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Properties',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Column(
                            spacing: 8,
                            children: [
                              Row(
                                spacing: 20,
                                children: [
                                  Icon(
                                    Icons.wifi_rounded,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    'High Speed Internet',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 20,
                                children: [
                                  Icon(
                                    Icons.wine_bar_rounded,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    'Bar/Lounge',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 20,
                                children: [
                                  Icon(
                                    Icons.restaurant_rounded,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    'Restaurant',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 20,
                                children: [
                                  Icon(Icons.spa_rounded, color: Colors.orange),
                                  Text(
                                    'Spa',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 20,
                                children: [
                                  Icon(
                                    Icons.dry_cleaning_rounded,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    'Dry Cleaning',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 20,
                                children: [
                                  Icon(
                                    Icons.airplanemode_active_rounded,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    'Airport Transportation',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        spacing: 8,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Properties',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Column(
                            spacing: 8,
                            children: [
                              Row(
                                spacing: 20,
                                children: [
                                  Icon(
                                    Icons.ac_unit_rounded,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    'Airport Transportation',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 20,
                                children: [
                                  Icon(
                                    Icons.thermostat_rounded,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    'Refrigerator',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 20,
                                children: [
                                  Icon(
                                    Icons.wine_bar_rounded,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    'Minibar',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 8,
                        children: [
                          Text(
                            'Hotel Links',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            spacing: 20,
                            children: [
                              Text(
                                'Visit Hotel Website',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.link, color: Colors.orange),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width,
                      child: discoverButton(
                        onTap: () {
                          Get.offAll(MainNav());
                        },
                        btnText: 'Recommend Resort!',
                        context: context,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
