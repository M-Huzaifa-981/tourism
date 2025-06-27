
import '../../utils/app_packages.dart';


class FoodsTab extends StatelessWidget {
  const FoodsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: Assets.foodImages.length,
      itemBuilder: (context, index) {
        return myCustomTrendCard(
          context: context,
          size: Size(width, height),
          titleText: AppTexts.foodNames[index],
          image: Assets.foodImages[index],
          onTap: () {
            Get.to(FoodDetailsScreen());
          },
        );
      },
    );
  }
}
