import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:tourism/generated/assets.dart';
import 'package:tourism/utils/app_colors.dart';
import 'package:tourism/utils/customWidgets/booking_card.dart';

class AroundMeScreen extends StatefulWidget {
  const AroundMeScreen({super.key});

  @override
  State<AroundMeScreen> createState() => _AroundMeScreenState();
}

class _AroundMeScreenState extends State<AroundMeScreen> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Around Me'),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Stack(
          children: [
            if (isTrue) ...[
              FlutterMap(
                options: MapOptions(
                  initialCenter: LatLng(51.5, -0.09),
                  initialZoom: 13.0,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                    userAgentPackageName:
                        'com.example.app', // Required to be polite
                  ),
                ],
              ),
            ] else ...[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.assetsPic4),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withValues(alpha: 0.8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.maybePop(context),
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      ),
                      Text(
                        'Around Me',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      Row(
                        children: [
                          Switch(
                            value: isTrue,
                            onChanged: (val) {
                              setState(() {
                                isTrue = val;
                              });
                            },
                          ),
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.search, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    // color: AppColors.primaryColor,
                    gradient: LinearGradient(
                      colors: [AppColors.primaryColor, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    spacing: 22,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabled: false,

                            prefixIcon: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 16,
                              ),
                              child: Text(
                                'Topics',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 16,
                              ),
                              child: Text(
                                'Restaurants',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            fillColor: Colors.black12,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter your keywords',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 90, 0),
                              child: Text(
                                'Search',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            fillColor: Colors.white54,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment(0, 0.85),
              child: Container(
                height: 250,
                // decoration: BoxDecoration(color: Colors.blue),
                width: double.infinity,
                child: ListView(
                  // padding: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 5, right: 10),
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...List.generate(
                      5,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: bookingCard(
                          size: Size(
                            MediaQuery.of(context).size.width / 1.3,
                            MediaQuery.of(context).size.width / 1,
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
    );
  }
}
