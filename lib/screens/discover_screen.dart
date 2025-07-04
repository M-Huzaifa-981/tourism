import '../utils/app_packages.dart';


class DiscoverScreen extends StatelessWidget {
  DiscoverScreen({super.key});

  static final String imagePath = "assets/images";

  final List<String> titles = [
    "Food",
    "Society",
    "People",
    "Living",
    "Region",
    "Culture",
    "Fashion",
    "Entertainments",
  ];

  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.blue,
    Colors.yellow,
    Colors.brown,
    Colors.cyan,
    CupertinoColors.systemGreen,
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Column(
          children: [
            AppBar(
              centerTitle: true,
              title: Text("Discover"),
              forceMaterialTransparency: true,
              // leading: IconButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   icon: Icon(Icons.arrow_back_ios),
              // ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: titles.length,
                itemBuilder: (BuildContext context, int index) {
                  final cardData = ImageCardInfo(
                    image: Assets.images[index],
                    heading: titles[index],
                    subtitle: "Explore New ${titles[index]}"
                  );
                  return Container(
                    child: InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> RestaurantMenuScreen()));
                        Get.to(RestaurantMenuScreen());
                      },
                      child: imageInfoCard(
                        imageCardInfo: cardData,
                        headingSize: 33,
                        titleSize: 44,
                        subTitleSize: 12,
                        imageSize: Size(width, height / 4.3),
                        linearGradient: LinearGradient(
                          colors: [
                            colors[index].withValues(alpha: 0.15),
                            colors[index].withValues(alpha: 0.8),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          transform: GradientRotation(45),
                        ),
                        isShowCardInfo: false,
                        onTap: (){},
                        borderRadius: 0,
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
