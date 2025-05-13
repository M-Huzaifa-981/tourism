import 'package:flutter/material.dart';
import 'package:tourism/utils/app_colors.dart';

import '../generated/assets.dart';
import 'near_rest_card.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    final Map<String, int> recepi = {
      'Olive oil': 50,
      'Butternut Squash': 300,
      'Garlic Cloves': 50,
      'Brown rice pasta': 150,
      'Lemon': 150,
    };
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.maybePop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            expandedHeight: 400.0,
            pinned: false,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // Background image
                  Image.asset(
                    'assets/images/food_img5.jpeg',
                    // 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
                    fit: BoxFit.cover,
                  ),

                  // Gradient overlay
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.6),
                        ],
                      ),
                    ),
                  ),

                  // Custom styled title (at bottom left)
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Creamy Roasted Butternut',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'There are more than 25k people who\nrecommends this dish',
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Creamy Roasted butternut',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '35 USD',
                    style: TextStyle(fontSize: 28, color: Colors.pink),
                  ),
                  Text(
                    "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Gallery',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        6,
                        (index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/food_img$index.jpeg',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Recipe',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: List.generate(recepi.length, (index) {
                      String key = recepi.keys.elementAt(index);
                      int value = recepi[key]!;
                      return ListTile(
                        leading: Image(
                          image: AssetImage(
                            'assets/images/food_img$index.jpeg',
                          ),
                        ),
                        title: Text(key, style: TextStyle(fontSize: 19)),
                        subtitle: Text(
                          "$value mg",
                          style: TextStyle(fontSize: 17),
                        ),
                      );
                    }),
                  ),

                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(5, (index) {
                        return nearRestCard(size, index);
                      }),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(fontSize: 22),
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'I recommend',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      //
      // ListView(
      //   children: [
      //     ,
      //   ],
      // ),
    );
  }
}
