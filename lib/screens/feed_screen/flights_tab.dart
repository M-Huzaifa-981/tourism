import 'package:flutter/material.dart';
import 'package:tourism/generated/assets.dart';
import 'package:tourism/utils/constants/strings.dart';
import 'package:tourism/utils/customWidgets/cards/trending_card.dart';

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
