import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tourism/models/imageCardInfo.dart';
import 'package:tourism/utils/app_colors.dart';

class FavDestinationScreen extends StatelessWidget {
  FavDestinationScreen({super.key});

  final cardData = ImageCardInfo(
    image: 'assets/images/img3.jpg',
    subtitle: 'Top 10 Favorite Destination Resorts',
  );

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final width = size.width;
    final List<Image> imgList = [
      Image.asset('assets/images/img4.jpg'),
      Image.asset('assets/images/img5.jpg'),
      Image.asset('assets/images/img6.jpg'),
      Image.asset('assets/images/img7.jpg'),
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Destinations'), centerTitle: true),
      body: ListView(
        children: [
          SizedBox(
            height: 400,
            child: Stack(
              children: [
                Container(
                  // height: 250,
                  decoration: BoxDecoration(
                    color: Colors.red.withValues(alpha: 0.6),
                  ),
                ),
                Image(image: AssetImage('assets/images/img1.jpg')),
                Align(
                  alignment: Alignment(0,1.15),
                  child: SizedBox(
                    // height: 120,
                    width: double.infinity,
                    child: CarouselSlider(
                      items: imgList,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        animateToClosest: true,
                        enlargeFactor: 0.45,
                        height: 180,
                        clipBehavior: Clip.antiAlias,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 5),
                        viewportFraction: 0.5
                      ),
                    ),
                  ),
                ),
                Text(
                  'Top 10 Favorite Destination Sites',
                  style: TextStyle(color: Colors.white, fontSize: 37),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                'Sapphire Seas',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [Icon(Icons.star), Text('4.8 (512 Reviews)')],
              ),
              Text('Hawaii', style: TextStyle(fontSize: 20)),
            ],
          ),
          Container(
            margin: EdgeInsets.all(11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Overview',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  'aksjf ;lskdf a;lskdjfla;skdfj al;skf aksjf ;lskdf a;lskdjfla;skdfj al;skf aksjf ;lskdf a;lskdjfla;skdfj al;skf aksjf ;lskdf a;lskdjfla;skdfj al;skf aksjf ;lskdf a;lskdjfla;skdfj al;skf aksjf ;lskdf a;lskdjfla;skdfj al;skf ',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  'Recipe',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  'aksjf ;lskdf a;lskdjfla;skdfj al;skf aksjf ;lskdf a;lskdjfla;skdfj al;skf aksjf ;lskdf a;lskdjfla;skdfj al;skf aksjf ;lskdf a;lskdjfla;skdfj al;skf aksjf ;lskdf a;lskdjfla;skdfj al;skf aksjf ;lskdf a;lskdjfla;skdfj al;skf ',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  'Resort\'s Gallery',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder:
                        (context, index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/img$index.jpg'),
                            ),
                          ),
                        ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: null,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'View Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
