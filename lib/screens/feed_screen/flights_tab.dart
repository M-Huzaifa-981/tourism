import '../../utils/app_packages.dart';


class FlightsTab extends StatelessWidget {
  const FlightsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) {
        return TrendingCard(
          titleText: MyStrings.flightNames[index],
          image: Assets.flightImages[index],
          onTap: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Flights Tapped')));
          },
        );
      },
    );
  }
}
