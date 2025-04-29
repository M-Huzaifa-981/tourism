import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:badges/badges.dart" as badges;
import '../utils/customWidgets/imageCard.dart';
import '../utils/customWidgets/booking_card.dart';
import 'discover_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      body: Container(
        color: Colors.black12.withValues(alpha: 0.01),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                height: height / 3.5,
                padding: EdgeInsets.only(bottom: 9),
                decoration: BoxDecoration(color: Colors.green),
                child: Column(
                  spacing: 22,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Travel Guide",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "What are you looking for?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 11),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 33,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(text: "Best Places To\n"),
                            TextSpan(text: "Travel In December"),
                          ],
                        ),
                      ),
                    ),

                    bookingCard(size: size),

                    SizedBox(height: 22,),

                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> DiscoverScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,       // Button background
                              foregroundColor: Colors.white,       // Text/Icon color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11), // Rounded corners
                              ),
                              padding: EdgeInsets.symmetric(vertical: 14), // Optional: taller button
                            ),
                            child: Text(
                              "Discover More",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 22,),


                    Container(
                      child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Container(
                               padding: EdgeInsets.all(7),
                                child: Text("EDITORS PICKS",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                            ),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(7, (index) {
                                return Container(
                                  margin: EdgeInsets.all(5),
                                  child: imageCard(
                                    size: Size(155, 233),
                                    image: "assets/images${index}.jpg",
                                    title: "EDITORS PICKS",
                                    subTitle: "",
                                    titleSize: 11,
                                    subTitleSize: 11,
                                    linearGradient: LinearGradient(
                                      colors: [
                                        Colors.transparent,
                                        Colors.green.withOpacity(0.9)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: 11,
                                  ),
                                );
                              }
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),




                    SizedBox(height: 33,),
                    Divider(height: 2,),
                    SizedBox(height: 33,),
                    
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5) ,
                              child: Text("DISCOVER RISTURENTS NEAR YOU",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ),
                          nearRestCard(size),
                        ],
                      ),
                    ),

                    SizedBox(height: 33,),
                    Divider(height: 2,),
                    SizedBox(height: 33,),


                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(7),
                            child: Text("AUTHOR'S CHOICE MONTHLY",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),


                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children:  List.generate(5, (index) {
                                return Container(
                                  margin: EdgeInsets.all(5),
                                  child: imageCard(
                                    size: Size(155, 155),
                                    image: "assets/images${index}.jpg",
                                    title: "AUTHOR'S CHOICE MONTHLY",
                                    subTitle: "",
                                    titleSize: 11,
                                    subTitleSize: 11,
                                    linearGradient: LinearGradient(
                                      colors: [Colors.transparent,
                                        Colors.green.withOpacity(0.9)],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: 11,
                                  ),
                                );
                              }
                            ),
                          ),
                          ),



                        ],
                      ),
                    ),


                    SizedBox(height: 55,),



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget nearRestCard(Size size){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(5, (index){
          return Card(
            child: Container(
              padding: EdgeInsets.all(5),
              width: size.width/1.5,
              height: size.width/1.5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/mountains/nature.jpg"),
                                fit : BoxFit.cover
                            )
                        ),
                      )
                  ),
            
            
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.all(7),
                        child: Column(
                          spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("The Ledbury"),
                            Text("127 Ledbury Road, London W11 2AQ"),
                            Divider(height: 2,),
                            Text("There are more than 25k people"),
                            Text("recommend this.")
                          ],
                        ),
                      )
                  )
                ],
              ),
            ),
          );
        }
        )
      ),
    );
  }


  // Widget imageCard(Size size, String image, LinearGradient linearGradient, double radius){
  //   return SingleChildScrollView(
  //     scrollDirection: Axis.horizontal,
  //     child: Row(
  //       children: List.generate(5, (index) {
  //         return Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Container(
  //               width: size.width,// 155,
  //               height: size.height, // 155,
  //               margin: EdgeInsets.symmetric(horizontal: 5),
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(radius),
  //                 image: DecorationImage(
  //                   image: AssetImage(image),
  //                   fit: BoxFit.cover,
  //                 ),
  //               ),
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(radius),
  //                   gradient: linearGradient
  //                 ),
  //                 padding: EdgeInsets.all(12),
  //                 alignment: Alignment.bottomLeft,
  //                 child: Text(
  //                   "Phuly Bay",
  //                   style: TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 20,
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //
  //             Container(
  //               padding: EdgeInsets.symmetric(horizontal: 7),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Row(
  //                     children: List.generate(4, (index)=> Icon(Icons.star, color: CupertinoColors.systemYellow)),
  //                   ),
  //
  //                   Text("4.8 (512 Reviews", style: TextStyle(color: CupertinoColors.systemYellow),),
  //                   Text("Hawaii",  style: TextStyle(color: CupertinoColors.black),),
  //
  //                 ],
  //               ),
  //             )
  //
  //           ],
  //         );
  //       }),
  //     ),
  //   );
  // }


}
