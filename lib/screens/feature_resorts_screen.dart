import 'package:flutter/material.dart';
import 'package:tourism/screens/home_screen.dart';
import 'package:tourism/utils/customWidgets/imageInfoCard.dart';

import '../models/imageCardInfo.dart';

class FeatureResortsScreen extends StatelessWidget {
  const FeatureResortsScreen({super.key});
  static final String imagePath = "assets/images";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("RESORTS"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Container(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(7),
                  child: Text(
                    "Features Resorts",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 33,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(8, (index) {
                    final cardData = ImageCardInfo(
                      image: "$imagePath/img$index.jpg",
                    );
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: imageInfoCard(
                        imageCardInfo: cardData,
                        imageSize: Size(width / 1.5, width / 2.5),
                        linearGradient: LinearGradient(
                          colors: [Colors.transparent, Colors.transparent],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        isShowCardInfo: true,
                        borderRadius: 9,
                      ),
                    );
                  }),
                ),
              ),
            ),

            SizedBox(height: 44),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(2, (index) {
                  final cardData = ImageCardInfo(
                    image: "$imagePath/img$index.jpg",
                  );

                  return Container(
                    margin: EdgeInsets.all(5),
                    child: imageInfoCard(
                      imageCardInfo: cardData,
                      infoAlign: CrossAxisAlignment.center,
                      imageSize: Size(width / 2.5, width / 2.5),
                      linearGradient: LinearGradient(
                        colors: [Colors.transparent, Colors.transparent],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      isShowCardInfo: true,
                      borderRadius: 7,
                    ),
                  );
                }),
              ),
            ),

            SizedBox(height: 55),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 11),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        ); //DiscoverScreen
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Button background
                        foregroundColor: Colors.white, // Text/Icon color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            11,
                          ), // Rounded corners
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 14,
                        ), // Optional: taller button
                      ),
                      child: Text(
                        "Discover More",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 55),

            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        child: Text(
                          "AUTHOR'S CHOICE MONTHLY",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 9,
                          vertical: 9,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 99,
                              height: 99,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500),
                                image: DecorationImage(
                                  image: AssetImage("$imagePath/img$index.jpg"),
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.all(7),
                              child: Text(
                                "Renato Hardy",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),


            SizedBox(height: 55),



            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(11),
                  child: Text(
                    "TOP RESORT'S BY COMPANY",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 11),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 cards per row
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 4/5.5,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      final cardData = ImageCardInfo(
                        image: "$imagePath/img$index.jpg",
                      );

                      return imageInfoCard(
                        imageCardInfo: cardData,
                        infoAlign: CrossAxisAlignment.center,
                        imageSize: Size(200, 200),
                        linearGradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        isShowCardInfo: true,
                        borderRadius: 11,
                      );
                    },
                  ),
                ),
              ],
            )




          ],
        ),
      ),
    );
  }
}
