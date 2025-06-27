import '../../utils/app_packages.dart';


class HotelsTab extends StatelessWidget {
  const HotelsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return PageView.builder(
      itemCount: AppTexts.resortTitles.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return myCustomTrendCard(
          context: context,
          size: Size(width, height),
          titleText: AppTexts.resortTitles[index],
          image: Assets.myRestaurantsImages[index],
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Hotels Tapped')));
          },
        );
      },
    );
  }
}
