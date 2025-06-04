import '../../utils/app_packages.dart';


class HotelsTab extends StatelessWidget {
  const HotelsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: MyStrings.resortTitles.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return TrendingCard(
          titleText: MyStrings.resortTitles[index],
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
