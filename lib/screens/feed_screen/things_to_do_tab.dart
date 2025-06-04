import '../../utils/app_packages.dart';
import '../../utils/app_packages.dart' as badges;


class ThingsToDoTab extends StatelessWidget {
  const ThingsToDoTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Container(
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: Assets.resortImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child:
            // FeedCard(),
            feedCard(
              context: context,
              onTap: () {
                Get.to(RestaurantMenuScreen());
              },
              image: Assets.resortImages[index],
              size: Size(width, height),
              badgePosition: badges.BadgePosition.bottomEnd(
                bottom: -22,
                end: 15,
              ),
              hashtags: ["#tag1", "#tag2", "#tag3", "#tag4"],
            ),
          );
        },
      ),
    );
  }
}
