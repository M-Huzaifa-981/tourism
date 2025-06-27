
import '../utils/app_packages.dart';



class EditorPickScreen extends StatelessWidget {
  const EditorPickScreen({super.key});

  static final String imagePath = "assets/images";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Column(
          children: [
            AppBar(
              title: Text("Resorts"),
              centerTitle: true,
              forceMaterialTransparency: true,
              // leading: IconButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   icon: Icon(Icons.arrow_back_ios),
              // ),
            ),
      
            Expanded(
              child: ListView(
                cacheExtent: 100,

                children: [
                  Column(
                    // shrinkWrap: true,
                    // scrollDirection: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                        child: Text(
                          "Editor's Picks",
                          style: TextStyle(fontSize: 33, color: Theme.of(context).primaryColor),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        child: Wrap(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                "FEATURED RESORTS",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: List.generate(8, (index) {
                                  final cardData = ImageCardInfo(
                                    image: "$imagePath/img$index.jpg",
                                    // title: "Phulay Bay",
                                  );
                                  return Container(
                                    margin: EdgeInsets.all(5),
                                    child: imageInfoCard(
                                      imageCardInfo: cardData,
                                      titleSize: 11,
                                      imageSize: Size(width / 3, width / 2),
                                      linearGradient: LinearGradient(
                                        colors: [
                                          Colors.transparent,
                                          AppColors.lightGreenColor.withOpacity(
                                            0.5,
                                          ),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      isShowCardInfo: true,
                                      borderRadius: 11,
                                    ),
                                  );
                                }),
                              ),
                            ),

                            Container(
                              child: Row(
                                children: List.generate(4, (i) {
                                  return Container(
                                    width: i == 0 ? 30 : 10,
                                    height: 10,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 11),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(9),
                            child: Text(
                              "EDITOR'S PICKS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),

                          ...List.generate(9, (index) {
                            return Card(
                              margin: EdgeInsets.symmetric(
                                horizontal: 7,
                                vertical: 5,
                              ),
                              child: ListTile(
                                tileColor: Theme.of(context).cardColor,
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
                                        fontSize: 14,
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
                                      mainAxisAlignment: MainAxisAlignment.start,
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
                          }),
                        ],
                      ),

                      Container(
                        // width: ,
                        width: width,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 7, vertical: 22),
                        child: discoverButton(
                          btnText: 'Discover More',
                          context: context,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => FeatureResortsScreen(),
                              ),
                            ); //DiscoverScreen
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
