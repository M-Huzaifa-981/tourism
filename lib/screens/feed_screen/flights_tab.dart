import '../../utils/app_packages.dart';


class FlightsTab extends StatelessWidget {
  const FlightsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) {
        return myCustomTrendCard(
          context: context,
          size: Size(width, height),
          titleText: AppTexts.flightNames[index],
          image: Assets.flightImages[index],
          onTap: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Flights Tapped')));
          },
        );
      },
    );
  }
}
