
import '../../utils/app_packages.dart';


class FoodsTab extends StatelessWidget {
  const FoodsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: Assets.foodImages.length,
      itemBuilder: (context, index) {
        return TrendingCard(
          titleText: MyStrings.foodNames[index],
          image: Assets.foodImages[index],
          onTap: () {
            Get.to(FoodDetailsScreen());
          },
        );
      },
    );
  }
}
