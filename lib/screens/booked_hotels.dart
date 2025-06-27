import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tourism/customWidgets/cards/food_card.dart';

final listProvider = StateNotifierProvider<MyListNotifier, List<HotelModel>>((
  ref,
) {
  return MyListNotifier([]);
});

class MyListNotifier extends StateNotifier<List<HotelModel>> {
  MyListNotifier(List<HotelModel> bookedHotelsList) : super(bookedHotelsList);

  void addHotel(HotelModel hotel) {
    state = [...state, hotel];
  }

  void removeHotel(HotelModel hotel) {
    state = state.where((h) => h != hotel).toList();
  }

  void removeHotelAt(int index) {
    if (index >= 0 && index < state.length) {
      final updatedList = [...state]..removeAt(index);
      state = updatedList;
    }
  }

  void clearHotels() {
    state = [];
  }
}

// List<HotelModel> bookedHotelsList = [];

class HotelModel {
  final String hotelName;
  final String hotelImage;

  HotelModel({required this.hotelName, required this.hotelImage});
}

class BookedHotels extends ConsumerWidget {
  const BookedHotels({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Booked Hotels'),
        forceMaterialTransparency: true,
        actions: [IconButton(onPressed: (){
          ref.read(listProvider.notifier).clearHotels();
        }, icon: Icon(Icons.delete))],
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final listVariable = ref.watch(listProvider);
          return Column(
            children: [
              (ref.read(listProvider).isEmpty
                  ? Expanded(child: Center(child: Text('Nothing found')))
                  : Expanded(
                    child: ListView.separated(
                      separatorBuilder:
                          (BuildContext context, int index) => Divider(
                            indent: 35,
                            endIndent: 35,
                            radius: BorderRadius.circular(10),
                            height: 22,
                          ),
                      // padding: EdgeInsets.zero,
                      itemCount: listVariable.length,
                      itemBuilder: (context, index) {
                        final cardData = FoodCardModel(
                          image: listVariable[index].hotelImage,
                          title: listVariable[index].hotelName,
                        );
                        return Container(
                          width: width,
                          // height: width / 2,
                          // decoration: BoxDecoration(color: Colors.red),
                          child: foodCard(
                            onTap: () {
                              // setState(() {});
                              // bookedHotelsList.removeAt(index);
                              ref
                                  .read(listProvider.notifier)
                                  .removeHotelAt(index);
                              // print(
                              //   '${bookedHotelsList[index].hotelName} is removed',
                              // );
                            },
                            size: Size(width, width / 2),
                            context: context,
                            cardTypeOptions: cardType.bigListTile,
                            foodModel: cardData,
                          ),
                        );
                        // return ListTile(
                        //   leading: CircleAvatar(
                        //     backgroundImage: AssetImage(
                        //       bookedHotelsList[index].hotelImage,
                        //     ),
                        //   ),
                        //   title: Text(bookedHotelsList[index].hotelName),
                        // );
                      },
                    ),
                  )),
            ],
          );
        },
      ),
    );
  }
}
