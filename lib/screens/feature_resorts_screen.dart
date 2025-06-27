import '../utils/app_packages.dart';

class FeatureResortsScreen extends StatelessWidget {
  const FeatureResortsScreen({super.key});

  static final String imagePath = "assets/images";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            AppBar(
              centerTitle: true,
              title: Text("RESORTS"),
              // backgroundColor: Colors.black,
              // leading: IconButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   icon: Icon(Icons.arrow_back_ios),
              // ),
            ),

            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                cacheExtent: 200,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(7),
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text(
                              "Featured Resorts",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 33,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: width,
                        height: width / 1.7,

                        // color: Colors.blue,
                        child: CarouselSlider.builder(
                          // items: imgList,
                          options: CarouselOptions(
                            // aspectRatio: 16 / 9,
                            enlargeCenterPage: true,
                            animateToClosest: true,
                            enlargeFactor: 0.4,
                            height: width / 1.3,
                            clipBehavior: Clip.antiAlias,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 5),
                            viewportFraction: 0.55,
                          ),
                          itemCount: Assets.resortImages.length,
                          itemBuilder: (
                            BuildContext context,
                            int index,
                            int realIndex,
                          ) {
                            final cardData = ImageCardInfo(
                              image:
                                  Assets
                                      .resortImages[index], // "$imagePath/img$index.jpg",
                            );
                            return Container(
                              width: 200,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 0),
                              child: InkWell(
                                onTap: () {
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => TrendingResortsScreen(),
                                  //   ),
                                  // );
                                  // DiscoverScreen
                                  Get.to(TopDestinationsScreen());
                                },
                                child: imageInfoCard(
                                  onTap: () {
                                    Get.to(TopDestinationsScreen());
                                  },
                                  imageCardInfo: cardData,
                                  imageSize: Size(width / 1.4, width / 2.8),
                                  linearGradient: LinearGradient(
                                    colors: [
                                      Colors.transparent,
                                      Colors.transparent,
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  isShowCardInfo: true,
                                  infoAlign: CrossAxisAlignment.center,
                                  borderRadius: 9,
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      // Container(
                      //   // height: width / 1.65,
                      //   child: SingleChildScrollView(
                      //     scrollDirection: Axis.horizontal,
                      //     // shrinkWrap: true,
                      //     child: Row(
                      //       children: List.generate(Assets.images.length, (
                      //         index,
                      //       ) {
                      //         final cardData = ImageCardInfo(
                      //           image:
                      //               Assets
                      //                   .images[index], // "$imagePath/img$index.jpg",
                      //         );
                      //         return Container(
                      //           margin: EdgeInsets.symmetric(horizontal: 15),
                      //           child: InkWell(
                      //             onTap: () {
                      //               Navigator.pushReplacement(
                      //                 context,
                      //                 MaterialPageRoute(
                      //                   builder:
                      //                       (context) => TrendingResortsScreen(),
                      //                 ),
                      //               ); //DiscoverScreen
                      //             },
                      //             child: imageInfoCard(
                      //               imageCardInfo: cardData,
                      //               imageSize: Size(width / 1.5, width / 2.5),
                      //               linearGradient: LinearGradient(
                      //                 colors: [
                      //                   Colors.transparent,
                      //                   Colors.transparent,
                      //                 ],
                      //                 begin: Alignment.centerLeft,
                      //                 end: Alignment.centerRight,
                      //               ),
                      //               isShowCardInfo: true,
                      //               borderRadius: 9,
                      //             ),
                      //           ),
                      //         );
                      //       }),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 22),

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
                                // linearGradient: LinearGradient(
                                //   colors: [
                                //     Colors.transparent,
                                //     Colors.transparent,
                                //   ],
                                //   begin: Alignment.centerLeft,
                                //   end: Alignment.centerRight,
                                // ),
                                isShowCardInfo: true,
                                borderRadius: 7,
                              ),
                            );
                          }),
                        ),
                      ),

                      SizedBox(height: 22),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 11),
                        width: width,
                        height: 50,
                        child: discoverButton(
                          btnText: 'Discover More',
                          context: context,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AllResortsScreen(),
                              ),
                            ); //DiscoverScreen
                          },
                        ),
                      ),

                      SizedBox(height: 55),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              "Featured Restaurants",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 33,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      myCarouselSlider(
                        size: Size(width, height),
                        imageList: Assets.foodImages,
                        coverImage: Assets.restaurantImage,
                      ),
                      Container(
                        // padding: EdgeInsetsGeometry.all(8),
                        width: width,
                        height: 50,
                        margin: EdgeInsets.symmetric(
                          horizontal: 11,
                          vertical: 11,
                        ),
                        child: discoverButton(
                          btnText: 'Discover More',
                          context: context,
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => AllResortsScreen(),
                            //   ),
                            // ); //DiscoverScreen
                            Get.to(FoodScreen());
                          },
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
                                      // color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                Assets.profileImage.length,
                                (index) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 9,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 88,
                                          height: 88,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                Assets.profileImage[index],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),

                                        Container(
                                          padding: EdgeInsets.all(7),
                                          child: Text(
                                            "Renato Hardy",
                                            style: TextStyle(
                                              // color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 33),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(11),
                            child: Text(
                              "TOP RESORT'S BY COMPANY",
                              style: TextStyle(
                                // color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 7,
                              vertical: 11,
                            ),
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2, // 2 cards per row
                                    crossAxisSpacing: 5,
                                    mainAxisSpacing: 5,
                                    childAspectRatio: 4 / 6,
                                  ),
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                final cardData = ImageCardInfo(
                                  image: "$imagePath/img$index.jpg",
                                );

                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) =>
                                                TopDestinationsDetailScreen(),
                                      ),
                                    );
                                  },
                                  child: Center(
                                    child: imageInfoCard(
                                      imageCardInfo: cardData,
                                      infoAlign: CrossAxisAlignment.center,
                                      imageSize: Size(width / 2.2, width / 2.2),
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
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
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
