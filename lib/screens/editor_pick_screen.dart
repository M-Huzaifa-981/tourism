import 'package:flutter/material.dart';
import 'package:tourism/screens/feature_resorts_screen.dart';
import 'package:tourism/utils/customWidgets/imageInfoCard.dart';

import '../models/imageCardInfo.dart';

class EditorPickScreen extends StatelessWidget {
  const EditorPickScreen({super.key});

  static final String imagePath = "assets/images";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("RESORTS"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(11),
              child: Text(
                "Editor's Picks",
                style: TextStyle(fontSize: 33, color: Colors.green),
              ),
            ),

            Container(
              height: width / 1.25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "FEATURE RESORTS",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(8, (index) {
                        final cardData = ImageCardInfo(
                          image: "$imagePath/img$index.jpg",
                          title: "Phulay Bay",
                        );
                        return Container(
                          margin: EdgeInsets.all(5),
                          child: imageInfoCard(
                            imageCardInfo: cardData,
                            titleSize: 11,
                            imageSize: Size(width / 3, width / 1.9),
                            linearGradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.green.withOpacity(0.9),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            isShowCardInfo: true,
                            borderRadius: 11,
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(7),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 10,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),

                  Container(
                    width: 10,
                    height: 10,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),

                  Container(
                    width: 10,
                    height: 10,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),

                  Container(
                    width: 10,
                    height: 10,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(9),
                      child: Text(
                        "EDITOR'S PICKS",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                    Expanded(
                      child: ListView.builder(
                        itemCount: 9,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 8) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 7,
                                vertical: 22,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder:
                                                (context) =>
                                                    FeatureResortsScreen(),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        foregroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            11,
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          vertical: 14,
                                        ),
                                      ),
                                      child: Text(
                                        "Discover More",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return Card(
                              margin: EdgeInsets.all(7),
                              child: ListTile(
                                leading: Container(
                                  width: 66,
                                  height: 66,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "$imagePath/img$index.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Richard's River Camp",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("Hawaii"),
                                  ],
                                ),

                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 5,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("⭐⭐⭐⭐ \t "),
                                        Text(
                                          "4.8 (512 Reviews",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Booking Available",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                        },
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
