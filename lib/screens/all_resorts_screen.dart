import 'package:flutter/material.dart';

class AllResortsScreen extends StatelessWidget {
  const AllResortsScreen({super.key});

  static final String imagePath = "assets/images";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('RESORTS'),
        centerTitle: true,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(Icons.arrow_back_ios),
        // ),
      ),

      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                spacing: 11,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 11),
                        child: Text(
                          "All Resorts",
                          style: TextStyle(
                            color: Theme.of(context).cardColor,
                            fontSize: 33,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width / 1.05,
                        child: ElevatedButton(
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> FeatureResortsScreen())); //DiscoverScreen
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.withValues(
                              alpha: 0.6,
                            ), // Button background
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
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 11),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Places", style: TextStyle(fontSize: 16)),
                                Text("Hawaii", style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width / 1.1,
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorDark,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Enter your keywords",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                            InkWell(
                              onTap: () {
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
                ],
              ),
            ),

            Container(height: 22),
            Divider(height: 1),

            Expanded(
              child: ListView.builder(
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Card(
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 7),
                        leading: Container(
                          width: 66,
                          height: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                              image: AssetImage("$imagePath/img$index.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${"Richard's River Camp".substring(0, 20)}...",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Hawaii", style: TextStyle(fontSize: 13)),
                          ],
                        ),

                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 5,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("⭐⭐⭐⭐ \t "),
                                Text(
                                  "4.8 (512 Reviews",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
