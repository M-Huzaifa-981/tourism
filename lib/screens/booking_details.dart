import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tourism/customWidgets/buttons/discover_button.dart';
import 'package:tourism/screens/booked_hotels.dart';

import '../generated/assets.dart';

class BookedDetail extends ConsumerWidget {
  const BookedDetail({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(listProvider);
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Hero(
              tag: image,
              child: Container(
                margin: EdgeInsetsGeometry.all(0),
                width: width,
                height: width - 50,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.low,
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsetsGeometry.all(10),
                width: width,
                // decoration: BoxDecoration(color: Colors.green.shade100),
                child: Column(
                  spacing: 15,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                            // overflow: TextOverflow.fade,
                          ),
                        ),
                        Text(
                          '\$200/Day',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ...List.generate(
                          4,
                          (index) => Icon(Icons.star, color: Colors.amber),
                        ),
                        Text(
                          '4.7 Stars',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        FlutterImageStack.providers(
                          providers: List.generate(
                            3,
                            (index) =>
                                ExactAssetImage(Assets.profileImage[index]),
                          ),
                          totalCount: 3,
                          itemRadius: 30,
                          itemBorderWidth: 0.5,
                        ),
                      ],
                    ),
                    Text(
                      style: TextStyle(fontWeight: FontWeight.w500),
                      textAlign: TextAlign.justify,
                      'Nestled along the riverfront, The Imperial Have offers a refined blend of old-world charm and modern indulgence. Enjoy award-winning dini serene wellness spa , and breathtaking skyline',
                    ),
                    Spacer(),
                    Container(
                      width: width,
                      // color: Colors.pink.shade200,
                      child: Column(
                        spacing: 8,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What we offer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            spacing: 8,
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 8,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  borderRadius: BorderRadiusGeometry.circular(
                                    50,
                                  ),
                                ),
                                child: Row(
                                  spacing: 4,
                                  children: [
                                    Icon(Icons.hotel),
                                    Text(
                                      '2 Beds',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 8,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  borderRadius: BorderRadiusGeometry.circular(
                                    50,
                                  ),
                                ),
                                child: Row(
                                  spacing: 4,
                                  children: [
                                    Icon(Icons.bathroom),
                                    Text(
                                      'Bathroom',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 8,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  borderRadius: BorderRadiusGeometry.circular(
                                    50,
                                  ),
                                ),
                                child: Row(
                                  spacing: 4,
                                  children: [
                                    Icon(Icons.person),
                                    Text(
                                      '4 Guests',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
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
                    Spacer(),
                    Container(
                      width: width,
                      child: discoverButton(
                        onTap: () {
                          if (!ref.read(listProvider).any(
                            (item) =>
                                item.hotelName.toLowerCase() ==
                                title.toLowerCase(),
                          )) {
                            ref.read(listProvider.notifier).addHotel(
                                HotelModel(
                                  hotelName: title,
                                  hotelImage: image,
                                )
                            );
                            // bookedHotelsList.add(
                            //   HotelModel(
                            //     hotelName: title,
                            //     hotelImage: image,
                            //   ),
                            // );
                            Navigator.pop(context);
                          } else {
                            print('already added');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('$title Already added'),
                              ),
                            );
                          }
                        },
                        btnText: 'Book Now',
                        context: context,
                      ),
                    ),
                    Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
