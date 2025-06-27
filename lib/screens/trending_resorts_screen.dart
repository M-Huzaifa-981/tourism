import 'package:tourism/screens/booking_details.dart';
import 'package:tourism/screens/booking_home.dart';

import '../utils/app_packages.dart';

class TrendingHotelsScreen extends StatelessWidget {
  const TrendingHotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return SafeArea(
      top: false,
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Container(
          child: Column(
            children: [
              AppBar(
                forceMaterialTransparency: true,
                title: Text('Hotels'),
                centerTitle: true,
                actions: [
                  IconButton(onPressed: null, icon: Icon(Icons.search)),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  // color: Theme.of(context).scaffoldBackgroundColor,
                ),
                child: Text(
                  'Trending Hotels',
                  style: TextStyle(
                    fontSize: 30,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  // physics: BouncingScrollPhysics(),
                  // clipBehavior: Clip.none,
                  // dragStartBehavior: DragStartBehavior.start,
                  scrollDirection: Axis.vertical,
                  itemCount: Assets.hotelImages.length,
                  itemBuilder: (context, index) {
                    return RepaintBoundary(
                      child: myCustomTrendCard(
                        titleText: AppTexts.hotelNames[index],
                        image: Assets.hotelImages[index],
                        onTap: () {
                          Get.to(
                            BookedDetail(
                              image: Assets.hotelImages[index],
                              title: AppTexts.hotelNames[index],
                            ),
                          );
                        },
                        context: context,
                        size: Size(width, height),
                      ),
                    );
                    // return trendingCard(
                    //   size: Size(width, height),
                    //   context: context,
                    //   titleText: MyStrings.hotelNames[index],
                    //   image: Assets.resortImages[index],
                    //   onTap: () {
                    //     Get.to(TopDestinationsDetailScreen());
                    //   },
                    // );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
