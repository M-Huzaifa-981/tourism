import 'package:flutter/material.dart';
import 'package:tourism/generated/assets.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  final LinearGradient myGradient = LinearGradient(
    colors: [Colors.transparent, Colors.green],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Material(
      child: SafeArea(
        child: Container(
          width: width,
          decoration: BoxDecoration(color: Colors.red.shade100),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                SizedBox(
                  width: width,
                  height: 0,
                  child: NestedScrollView(
                    headerSliverBuilder:
                        (context, innerBoxScrolled) => [
                          SliverAppBar(
                            pinned: true,
                            floating: false,
                            snap: false,
                            expandedHeight: 200,
                            flexibleSpace: FlexibleSpaceBar(
                              background: Image.asset(
                                Assets.restaurantImage,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                "Floating TabBar Demo",
                                style: TextStyle(color: Colors.amber),
                              ),
                            ),
                            bottom: PreferredSize(
                              preferredSize: Size(width, 60),
                              child: Text('some preffered size text'),
                            ),
                          ),
                        ],
                    body: Container(
                      child: Text('sliver body'),
                      color: Colors.teal,
                    ),
                  ),
                ),

                Container(
                  color: Colors.pink,
                  child: Stack(
                    // alignment: Alignment.center,
                    children: [
                      Container(
                        width: width,
                        height: height / 3.5,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage(Assets.restaurantImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        height: width / 1.3,
                        alignment: Alignment.bottomCenter,
                        // padding: EdgeInsets.symmetric(vertical: 120),
                        // decoration: BoxDecoration(color: Colors.blue),
                        child: Container(
                          margin: EdgeInsetsGeometry.all(10),
                          // padding: EdgeInsetsGeometry.all(10),
                          // width: width,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white60,
                                spreadRadius: 1,
                                blurRadius: 20,
                              ),
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 12,
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          child: TabBar(
                            labelColor: Colors.white,
                            indicator: BoxDecoration(
                              color: Colors.black,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green.shade100,
                                  blurRadius: 20,
                                  spreadRadius: 1,
                                  // offset: Offset(0, 0),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            indicatorSize: TabBarIndicatorSize.tab,
                            controller: _tabController,
                            unselectedLabelColor: Colors.black,
                            splashBorderRadius: BorderRadius.circular(50),
                            splashFactory: NoSplash.splashFactory,
                            tabs: [
                              Tab(text: 'Hotels', icon: Icon(Icons.hotel)),
                              Tab(text: 'Flights', icon: Icon(Icons.flight)),
                              Tab(
                                text: 'Restaurants',
                                icon: Icon(Icons.restaurant),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsetsGeometry.all(10),
                  child: Text(
                    'Top Picks for You',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsetsGeometry.all(10),
                  width: width,
                  color: Colors.green,
                  height: 500,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(
                        padding: EdgeInsetsGeometry.all(10),
                        margin: EdgeInsetsGeometry.all(10),
                        foregroundDecoration: BoxDecoration(
                          // gradient: myGradient,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 20,
                              offset: Offset(3, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(Assets.resort3),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          // alignment: Alignment.center,
                          children: [
                            Text(
                              'Top trending resort',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 40,
                              child: Text(
                                'very relaxed',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 20,
                              child: Text(
                                'beautiful sight seeing',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Text(
                                'wonders of nature',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text('second content'),
                      Text('third content'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _MyIndicatorPainter();
  }
}

class _MyIndicatorPainter extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint =
        Paint()
          ..color = Colors.orange
          ..style = PaintingStyle.fill;

    final Rect rect =
        Offset(offset.dx, configuration.size!.height - 6) &
        Size(configuration.size!.width, 6);

    canvas.drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(3)), paint);
  }
}

/*
*
                   */
