import '../utils/app_packages.dart';


class AroundMeScreen extends StatefulWidget {
  const AroundMeScreen({super.key});

  @override
  State<AroundMeScreen> createState() => _AroundMeScreenState();
}

class _AroundMeScreenState extends State<AroundMeScreen> {
  int value = 0;
  int? nullableValue;
  bool positive = false;
  bool loading = false;
  bool showMap = true;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      body: Container(
        // foregroundDecoration: BoxDecoration(
        //
        // ),
        child: Container(
          child: Stack(
            children: [
              FlutterMap(
                options: MapOptions(
                  initialCenter: LatLng(24.8607, 67.0011),
                  initialZoom: 13.0,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                    userAgentPackageName:
                        'com.example.app', // Required to be polite
                  ),
                ],
              ),
              Container(
                width: width,
                height: height,
                // color: Colors.red.shade200,
                child: Stack(
                  children: [
                    IgnorePointer(
                      child: Container(
                        decoration: BoxDecoration(
                          image:
                              (showMap
                                  ? DecorationImage(
                                    image: AssetImage(Assets.resort4),
                                    fit: BoxFit.cover,
                                  )
                                  : null),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        AppBar(
                          title: Text('Around Me'),
                          centerTitle: true,
                          backgroundColor: Theme.of(
                            context,
                          ).cardColor.withValues(alpha: 0.75),
                          foregroundColor: Colors.white,
                          actions: [
                            SizedBox(
                              width: 100,
                              child: CupertinoSwitch(
                                value: showMap,
                                onChanged: (val) {
                                  setState(() {
                                    showMap = val;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: IgnorePointer(
                            child: Container(
                              width: width,
                              decoration: BoxDecoration(
                                // color: Colors.blue.shade200,
                                gradient: LinearGradient(
                                  colors: [
                                    Theme.of(
                                      context,
                                    ).cardColor.withValues(alpha: 0.75),
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.center,
                                ),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                spacing: 10,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // SizedBox(height: 10),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        enabled: false,

                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 15,
                                            horizontal: 16,
                                          ),
                                          child: Text(
                                            'Topics',
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        suffixIcon: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10.0,
                                            horizontal: 16,
                                          ),
                                          child: Text(
                                            'Restaurants',
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        fillColor: Colors.black12,
                                        filled: true,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Enter your keywords',
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          // fontSize: 17,
                                        ),
                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                            20,
                                            12,
                                            40,
                                            0,
                                          ),
                                          child: Text(
                                            'Search',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        fillColor: Colors.white54,
                                        filled: true,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.amber.shade200,
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(flex: 3),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          spacing: 12,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => bookingCard(
                              size: Size(width / 1.05, height),
                              context: context,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
//
// class AroundMeScreen extends StatefulWidget {
//   const AroundMeScreen({super.key});
//
//   @override
//   State<AroundMeScreen> createState() => _AroundMeScreenState();
// }
//
// class _AroundMeScreenState extends State<AroundMeScreen> {
//   bool isTrue = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('Around Me'),
//       //   centerTitle: true,
//       // ),
//       body: SafeArea(
//         child: Stack(
//           children: [
//             if (isTrue) ...[
//               FlutterMap(
//                 options: MapOptions(
//                   initialCenter: LatLng(51.5, -0.09),
//                   initialZoom: 13.0,
//                 ),
//                 children: [
//                   TileLayer(
//                     urlTemplate:
//                         "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
//                     userAgentPackageName:
//                         'com.example.app', // Required to be polite
//                   ),
//                 ],
//               ),
//             ] else ...[
//               Container(
//                 height: double.infinity,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(Assets.assetsPic4),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ],
//
//             Column(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: 80,
//                   decoration: BoxDecoration(
//                     color: AppColors.primaryColor.withValues(alpha: 0.8),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton(
//                         onPressed: () => Navigator.maybePop(context),
//                         icon: Icon(Icons.arrow_back_ios, color: Colors.white),
//                       ),
//                       Text(
//                         'Around Me',
//                         style: TextStyle(color: Colors.white, fontSize: 22),
//                       ),
//                       Row(
//                         children: [
//                           Switch(
//                             value: isTrue,
//                             onChanged: (val) {
//                               setState(() {
//                                 isTrue = val;
//                               });
//                             },
//                           ),
//                           IconButton(
//                             onPressed: null,
//                             icon: Icon(Icons.search, color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: double.infinity,
//                   padding: EdgeInsets.symmetric(vertical: 10),
//                   decoration: BoxDecoration(
//                     // color: AppColors.primaryColor,
//                     gradient: LinearGradient(
//                       colors: [AppColors.primaryColor, Colors.transparent],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                     ),
//                   ),
//                   child: Column(
//                     spacing: 22,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width / 1.2,
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             enabled: false,
//
//                             prefixIcon: Padding(
//                               padding: const EdgeInsets.symmetric(
//                                 vertical: 10,
//                                 horizontal: 16,
//                               ),
//                               child: Text(
//                                 'Topics',
//                                 style: TextStyle(
//                                   color: Colors.white70,
//                                   fontSize: 19,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                             suffixIcon: Padding(
//                               padding: const EdgeInsets.symmetric(
//                                 vertical: 10.0,
//                                 horizontal: 16,
//                               ),
//                               child: Text(
//                                 'Restaurants',
//                                 style: TextStyle(
//                                   color: Colors.white70,
//                                   fontSize: 19,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                             fillColor: Colors.black12,
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width / 1.2,
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             hintText: 'Enter your keywords',
//                             hintStyle: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 17,
//                             ),
//                             prefixIcon: Padding(
//                               padding: const EdgeInsets.fromLTRB(20, 10, 90, 0),
//                               child: Text(
//                                 'Search',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 19,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                             fillColor: Colors.white54,
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Align(
//               alignment: Alignment(0, 0.85),
//               child: Container(
//                 height: 250,
//                 // decoration: BoxDecoration(color: Colors.blue),
//                 width: double.infinity,
//                 child: ListView(
//                   // padding: EdgeInsets.all(10),
//                   padding: EdgeInsets.only(left: 5, right: 10),
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     ...List.generate(
//                       5,
//                       (index) => Padding(
//                         padding: const EdgeInsets.only(right: 8.0),
//                         child: bookingCard(
//                           size: Size(
//                             MediaQuery.of(context).size.width / 1.3,
//                             MediaQuery.of(context).size.width / 1,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
