import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tourism/customWidgets/cards/trending_card.dart';
import 'package:tourism/customWidgets/clippers/endborder_clipper.dart';
import 'package:tourism/customWidgets/clippers/home_clipper.dart';
import 'package:tourism/screens/booked_hotels.dart';
import 'package:tourism/screens/booking_details.dart';
import 'package:tourism/utils/app_packages.dart';

import '../generated/assets.dart';

final sliverExpandedProvider = StateProvider((ref) => false);

class BookingHomeScreen extends ConsumerStatefulWidget {
  const BookingHomeScreen({super.key});

  @override
  ConsumerState<BookingHomeScreen> createState() => _booking_homeState();
}

class _booking_homeState extends ConsumerState<BookingHomeScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  late ScrollController _scrollController;

  // bool _showButton = false;
  double _topPosition = 100;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController();

    _scrollController =
        ScrollController()..addListener(() {
          final isScrolled = _scrollController.offset > 100;
          if (ref.read(sliverExpandedProvider) != isScrolled) {
            // ref.read(appbarProvider.notifier).state = shouldShowTitle;
            ref.read(sliverExpandedProvider.notifier).state = isScrolled;
            log('sliver read');
          }
        });

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   // print('postframe');
    //   ref.read(sliverExpandedProvider.notifier).state;
    // });

    // _scrollController.addListener(() {
    //   if (_scrollController.hasClients) {
    //     final isCollapsed = _scrollController.offset > 100; // adjust this value
    //     if (isCollapsed != _showButton) {
    //       // ref.read(sliverExpandedProvider.notifier).state = isCollapsed;
    //       _showButton = isCollapsed;
    //       // setState(() {
    //       //   _showButton = isCollapsed;
    //       // });
    //
    //     }
    //   }
    // });

    _scrollController.addListener(() {
      // setState(() {
      //   _topPosition = 200 - _scrollController.offset;
      //   if (_topPosition < 50) _topPosition = 50; // clamp to avoid disappearing
      // });
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      // clipBehavior: Clip.hardEdge,
      child: NestedScrollView(
        floatHeaderSlivers: false,
        // physics: BouncingScrollPhysics(),
        controller: _scrollController,

        headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) => [
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final _showButton = ref.watch(sliverExpandedProvider);
                  log('sliverexpandedprovider');
                  return SliverAppBar(
                    backgroundColor:
                        (_showButton
                            ? Theme.of(context).scaffoldBackgroundColor
                            : Colors.transparent),
                    title: (_showButton ? Text('Bookings') : Text('')),
                    centerTitle: false,
                    // foregroundColor:
                    //     (_showButton ? Colors.black : Colors.white),
                    // systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
                    leading:
                        (!_showButton
                            ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  Assets.profileImage[2],
                                ),
                              ),
                            )
                            : IconButton(onPressed: (){
                              Navigator.maybePop(context);
                        }, icon: Icon(Icons.arrow_back))),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => BookedHotels()),
                            );
                          },
                          icon: Icon(Icons.app_registration, ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.notifications_active_outlined),
                      ),
                    ],
                    pinned: true,
                    // stretch: true,
                    floating: false,
                    expandedHeight: 200,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text('', style: TextStyle(color: Colors.teal)),
                      // expandedTitleScale: 2,
                      background: Container(
                        foregroundDecoration: BoxDecoration(
                          // gradient: LinearGradient(
                          //   colors: [Colors.black54, Colors.transparent],
                          //   begin: Alignment.topCenter,
                          //   end: Alignment(0, 1),
                          // ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ResizeImage(AssetImage(Assets.restaurantsImage[6]), width: 400, height: 400),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),

              SliverPersistentHeader(
                pinned: true,
                // floating: true,
                delegate: _SliverTabBarDelegate(
                  Container(
                    width: width,
                    height: width / 1.3,
                    alignment: Alignment.bottomCenter,
                    // padding: EdgeInsetsGeometry.all(0),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    // decoration: BoxDecoration(color: Colors.blue),
                    child: Container(
                      margin: EdgeInsetsGeometry.all(0),
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
                  kToolbarHeight + 30,
                  // TabBar(controller: _tabController, tabs: [
                  //   Tab(text: 'tab 1',),
                  //   Tab(text: 'tab 2',),
                  //   Tab(text: 'tab 3',),
                  // ]),
                ),
              ),
            ],
        body: TabBarView(
          controller: _tabController,
          clipBehavior: Clip.none,
          // viewportFraction: 1,
          children: [

            HotelsTab(
              names: AppTexts.hotelNames,
              images: Assets.hotelImages,
              key: PageStorageKey('tab1'),
            ),
            HotelsTab(
              names: AppTexts.flightNames,
              images: Assets.flightImages,
              key: PageStorageKey('tab3'),

            ),
            HotelsTab(
              names: AppTexts.restaurantNames,
              images: Assets.myRestaurantsImages,
              key: PageStorageKey('tab2'),

            ),

          ],
        ),
      ),
    );
  }
}

// Custom delegate to pin TabBar
class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget _child;
  final double _height;

  _SliverTabBarDelegate(this._child, this._height);

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return _child;
  }

  @override
  double get maxExtent => _height;

  @override
  double get minExtent => _height;

  @override
  bool shouldRebuild(covariant _SliverTabBarDelegate oldDelegate) {
    return oldDelegate._child != _child || oldDelegate._height != _height;
  }
}



class HotelsTab extends StatefulWidget {
  const HotelsTab({super.key, required this.names, required this.images});
  final List<String> names, images;

  @override
  State<HotelsTab> createState() => _HotelsTabState();
}

class _HotelsTabState extends State<HotelsTab> with AutomaticKeepAliveClientMixin {
  @override bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Text(
            'Top picks for you',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.separated(
            key: widget.key,
            // addAutomaticKeepAlives: true,
            // dragStartBehavior: DragStartBehavior.start,
            // physics: BouncingScrollPhysics(),
            separatorBuilder:
                (_, __) => Divider(thickness: 1, indent: 35, endIndent: 35),
            // controller: _scrollController,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemCount: Assets.hotelImages.length,
            cacheExtent: 500,
            itemBuilder: (context, index) {
              // print('name : ${Assets.hotelImages[index]}');
              print('hotel tabbarview $index');
              return Hero(
                tag: widget.images[index],
                child: myCustomTrendCard(
                  titleText: widget.names[index],
                  image: widget.images[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (_) => BookedDetail(
                          title: widget.names[index],
                          image: widget.images[index],
                        ),
                      ),
                    );
                  },
                  context: context,
                  size: Size(width, height / 1.8),
                ),
              );
            },
          ),
        ),
      ],
    );;
  }
}



Widget buildTabbarView({
  required BuildContext context,
  required Size size,
  required List<String> images,
  required List<String> texts,
  VoidCallback? onTap,
}) {
  final Size size = MediaQuery.of(context).size;
  double width = size.width;
  double height = size.height;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: Text(
          'Top picks for you',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      Expanded(
        child: ListView.builder(
          // controller: _scrollController,
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Column(
              children: [
                myCustomTrendCard(
                  titleText: texts[index],
                  image: images[index],
                  onTap: onTap ?? () {},
                  context: context,
                  size: Size(width, height / 1.8),
                ),
                Divider(thickness: 1, indent: 35, endIndent: 35),
              ],
            );
          },
        ),
      ),
    ],
  );
}


// Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Padding(
//       padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
//       child: Text(
//         'Top picks for you',
//         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//       ),
//     ),
//     Expanded(
//       child: ListView.separated(
//         addAutomaticKeepAlives: true,
//         // dragStartBehavior: DragStartBehavior.start,
//         physics: BouncingScrollPhysics(),
//         separatorBuilder:
//             (_, __) =>
//                 Divider(thickness: 1, indent: 35, endIndent: 35),
//         // controller: _scrollController,
//         padding: EdgeInsets.zero,
//         scrollDirection: Axis.vertical,
//         itemCount: Assets.hotelImages.length,
//         cacheExtent: 500,
//         itemBuilder: (context, index) {
//           // print('name : ${Assets.hotelImages[index]}');
//           print('hotel tabbarview $index');
//           return Hero(
//             tag: Assets.hotelImages[index],
//             child: myCustomTrendCard(
//               titleText: AppTexts.hotelNames[index],
//               image: Assets.hotelImages[index],
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder:
//                         (_) => RoughDetail(
//                           title: AppTexts.hotelNames[index],
//                           image: Assets.hotelImages[index],
//                         ),
//                   ),
//                 );
//               },
//               context: context,
//               size: Size(width, height / 1.8),
//             ),
//           );
//         },
//       ),
//     ),
//   ],
// ),
// Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Padding(
//       padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
//       child: Text(
//         'Top picks for you',
//         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//       ),
//     ),
//     Expanded(
//       child: ListView.builder(
//         // controller: _scrollController,
//         padding: EdgeInsets.zero,
//         scrollDirection: Axis.vertical,
//         itemCount: Assets.flightImages.length,
//         itemBuilder: (_, index) {
//           return Column(
//             children: [
//               myCustomTrendCard(
//                 titleText: AppTexts.flightNames[index],
//                 image: Assets.flightImages[index],
//                 onTap: () {
//                   print('hotels $index');
//                 },
//                 context: context,
//                 size: Size(width, height / 1.8),
//               ),
//               Divider(thickness: 1, indent: 35, endIndent: 35),
//             ],
//           );
//         },
//       ),
//     ),
//   ],
// ),
// Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Padding(
//       padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
//       child: Text(
//         'Top picks for you',
//         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//       ),
//     ),
//     Expanded(
//       child: ListView.builder(
//         // controller: _scrollController,
//         padding: EdgeInsets.zero,
//         scrollDirection: Axis.vertical,
//         itemCount: Assets.hotelImages.length,
//         itemBuilder: (_, index) {
//           return Column(
//             children: [
//               myCustomTrendCard(
//                 titleText: AppTexts.hotelNames[index],
//                 image: Assets.hotelImages[index],
//                 onTap: () {},
//                 context: context,
//                 size: Size(width, height / 1.8),
//               ),
//               Divider(thickness: 1, indent: 35, endIndent: 35),
//             ],
//           );
//         },
//       ),
//     ),
//   ],
// ),