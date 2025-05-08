import 'package:flutter/material.dart';
import 'package:tourism/models/imageCardInfo.dart';

import '../utils/customWidgets/imageInfoCard.dart';

class RestaurantMenuScreen extends StatelessWidget {
  const RestaurantMenuScreen({super.key});

  static final String imagePath = "assets/images";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    
    return Scaffold(
      appBar:      AppBar(
        backgroundColor: Colors.transparent,
        title: Text("RESTAURANT"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Container(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // spacing: 15,
          children: [
            Container(
              width: width,
              height: width/1.4,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("$imagePath/img0.jpg"), fit: BoxFit.cover)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green.withValues(alpha: 0.6),
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "RESTAURANT MENU",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 33,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),

            ),

            SizedBox(height: 22,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width/1.05,
                  child: ElevatedButton(
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> FeatureResortsScreen())); //DiscoverScreen
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,       // Button background
                      foregroundColor: Colors.white,       // Text/Icon color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11), // Rounded corners
                      ),
                      padding: EdgeInsets.symmetric(vertical: 14), // Optional: taller button
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Places",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "Hawaii",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width / 1.1,
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Enter your keywords",
                              border: InputBorder.none
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          FocusScope.of(context).unfocus();
                        },
                        child: Container(
                          width: 66,
                          // height: 55,
                          // color: Colors.green,
                          child: Icon(Icons.search),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),

            // SizedBox(height: 22,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.yellow,
                  margin: EdgeInsets.symmetric(horizontal: 7, vertical: 1),
                  child: Text(
                    "Amazing Salads to Fit Your Needs",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            // SizedBox(height: 11,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.yellow,
                  margin: EdgeInsets.symmetric(horizontal: 7, vertical: 1),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(text: "⭐\t"),
                        TextSpan(text: "Feature"),
                      ],
                    ),
                  ),


                ),
              ],
            ),


            ...List.generate(8, (index){
              ImageCardInfo cardData = ImageCardInfo(
                  image: "$imagePath/img$index.jpg",
                  heading: "Athena Henri",
                  subtitle: "Salads"
              );
              return  Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                child: imageInfoCard(
                    imageCardInfo: cardData,
                    headingSize: 16,
                    subTitleSize: 14,
                    imageSize: Size(width/1.05, width/1.8),
                    linearGradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.7)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        transform: GradientRotation(44)
                    ),
                    isShowCardInfo: false,
                    borderRadius: 11
                ),
              );
            })




          ],
        ),
      ),
    );
  }
}
