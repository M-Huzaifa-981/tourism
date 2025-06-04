
import '../utils/app_packages.dart';


class FavoriteResortScreen extends StatelessWidget {
  const FavoriteResortScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final width = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Resorts'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(11),
            child: Container(
              decoration: BoxDecoration(color: Colors.amber),
              height: 680,
              child: Stack(
                children: [
                  Image.asset(
                    Assets.assetsPic1,
                    height: 600,
                    fit: BoxFit.cover,
                  ),

                  Container(
                    width: double.infinity,
                    height: 700,
                    decoration: BoxDecoration(
                      // color: Colors.amberAccent,
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [AppColors.primaryColor, Colors.transparent],
                      ),
                    ),
                    // child: Text(
                    //   'data',
                    //   style: TextStyle(color: Colors.white, fontSize: 30),
                    // ),
                  ),

                  Positioned(
                    bottom: 0,
                    // alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 88,
                      width: width,
                      child: Row(
                        // mainAxisSize: MainAxisSize.min,
                        // spacing: 2,
                        children: List.generate(
                          5,
                          (index) => Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 0.5),
                              child: Image.asset(
                                Assets.assetsPic0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        // [
                        //   Image.asset(Assets.assetsPic1),
                        //   Image.asset(Assets.assetsPic1),
                        //   Image.asset(Assets.assetsPic1),
                        // ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.7),
                    child: bookingCard(size: Size(390, 222), context: context),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'About',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  'aksj sldakjf allieg ljgos galkjfalsdf a alskfjoie la dalkfjaoijei alkdjf oiadf',
                  style: TextStyle(fontSize: 18),
                ),

                Column(
                  spacing: 6,
                  children: List.generate(
                    5,
                    (index) => Row(
                      spacing: 30,
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text('Location', style: TextStyle(color: Colors.amber)),
                      ],
                    ),
                  ),
                ),

                // Row(
                //   spacing: 30,
                //   children: [
                //     Icon(Icons.star, color: Colors.yellow),
                //     Text('Location', style: TextStyle(color: Colors.amber)),
                //   ],
                // ),
                // Row(
                //   spacing: 30,
                //   children: [
                //     Icon(Icons.star, color: Colors.yellow),
                //     Text('Location', style: TextStyle(color: Colors.amber)),
                //   ],
                // ),
                // Row(
                //   spacing: 30,
                //   children: [
                //     Icon(Icons.star, color: Colors.yellow),
                //     Text('Location', style: TextStyle(color: Colors.amber)),
                //   ],
                // ),
                Text(
                  'askdfja askdjfak aslkdfj aw;oi fska jfo;aisjdfo wijd fksdjf oawiehtighihsado;fi asid fhoasid;fa ;faois f',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              spacing: 6,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Restaurant\'s Gallery',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 5,
                    children: List.generate(
                      4,
                      (index) => ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(Assets.assetsPic1, height: 130),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Properties',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Row(
                      spacing: 20,
                      children: [
                        Icon(Icons.wifi_rounded, color: Colors.orange),
                        Text(
                          'High Speed Internet',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Icon(Icons.wine_bar_rounded, color: Colors.orange),
                        Text(
                          'Bar/Lounge',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Icon(Icons.restaurant_rounded, color: Colors.orange),
                        Text(
                          'Restaurant',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Icon(Icons.spa_rounded, color: Colors.orange),
                        Text(
                          'Spa',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Icon(Icons.dry_cleaning_rounded, color: Colors.orange),
                        Text(
                          'Dry Cleaning',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Icon(
                          Icons.airplanemode_active_rounded,
                          color: Colors.orange,
                        ),
                        Text(
                          'Airport Transportation',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'Features',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Row(
                      spacing: 20,
                      children: [
                        Icon(Icons.ac_unit_rounded, color: Colors.orange),
                        Text(
                          'Airport Transportation',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Icon(Icons.thermostat_rounded, color: Colors.orange),
                        Text(
                          'Refrigerator',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Icon(Icons.wine_bar_rounded, color: Colors.orange),
                        Text(
                          'Minibar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'Hotel Links',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  spacing: 20,
                  children: [
                    Text(
                      'Visit Hotel Website',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.link, color: Colors.orange),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
