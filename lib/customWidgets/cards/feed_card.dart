import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

Widget feedCard({
  required Size size,
  required String image,
  required List<String> hashtags,
  required badges.BadgePosition badgePosition, required BuildContext context, required VoidCallback onTap,
}) {
  double width = size.width;
  double height = size.height;

  return  Container(
    width: width,
    height: height,
    margin: EdgeInsets.only(bottom: 15),
    child: Column(
      children: [
        SizedBox(height: 11),

        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(7),
          child: Text(
            hashtags.join(', '),
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),

          ),
        ),

        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Expanded(
                  child: badges.Badge(
                    position: badgePosition,
                    badgeContent: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 33,
                    ),
                    badgeStyle: badges.BadgeStyle(
                      shape: badges.BadgeShape.circle,
                      badgeColor: Colors.redAccent,
                      elevation: 4,
                      padding: EdgeInsets.all(8),
                    ),
                    child: Container(
                      width: width,
                      // height: height * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(11)),
                        // color: Colors.amber,
                        image: DecorationImage(image: AssetImage(image),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),


                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                  child: Text(
                        'Pakistan\'s Best Foodie Cities',
                        style: TextStyle(
                          fontSize: 27,
                          color: Color(0XFF39c8a5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                ),


                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(11))
                  ),
                  child: Row(
                    children: [
                      FlutterImageStack.providers(
                        itemCount: 3,
                        itemRadius: 44,
                        totalCount: 5,
                        providers: [
                          ...List.generate(5, (index){
                            return ExactAssetImage('assets/images/img$index.jpg');
                          })
                        ],
                      ),
                      SizedBox(width: 6),
                      Icon(Icons.favorite, color: Colors.red, size: 16),
                      SizedBox(width: 4),
                      Text(
                        '3,123 loved this',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

      ],
    ),
  );
}


// class FeedCard extends StatelessWidget {
//   const FeedCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       spacing: 7,
//       children: [
//         // SizedBox(height: 10,),
//         Text(
//           '#food #restaurant #guests #tour',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 17,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         Container(
//           height: MediaQuery.of(context).size.height * 0.55,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Stack(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//                 child: Image(image: AssetImage('assets/images/img8.jpg')),
//               ),
//               Align(
//                 alignment: Alignment(0.8, 0.3),
//                 child: Container(
//                   height: 70,
//                   width: 70,
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                   child: Icon(Icons.favorite, size: 35, color: Colors.white),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment(0, 0.75),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'Pakistan\'s Best Foodie Cities',
//                     style: TextStyle(
//                       fontSize: 40,
//                       color: Color(0XFF39c8a5),
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment(0, 1),
//                 child: Container(
//                   padding: EdgeInsets.symmetric(vertical: 9),
//                   decoration: BoxDecoration(
//                     color: Colors.black12,
//                     borderRadius: BorderRadius.vertical(
//                       bottom: Radius.circular(20),
//                     ),
//                   ),
//                   child: Row(
//                     spacing: 8,
//                     children: [
//                       FlutterImageStack.providers(
//                         itemRadius: 50,
//                         providers: [
//                           ExactAssetImage('assets/images/img1.jpg'),
//                           ExactAssetImage('assets/images/img1.jpg'),
//                           ExactAssetImage('assets/images/img1.jpg'),
//                         ],
//                         totalCount: 4,
//                       ),
//
//                       Text(
//                         '3,123 loved this !',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: 10),
//       ],
//     );
//   }
// }
