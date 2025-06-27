import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/customWidgets/buttons/discover_button.dart';

enum cardType {
  card,
  listTile,
  bigListTile,
  smallCards,
  cartListTile,
  postCard;

  double get cardTypeSwitch {
    return switch (this) {
      // TODO: Handle this case.
      cardType.card => 1,
      // TODO: Handle this case.
      cardType.listTile => 2,
      // TODO: Handle this case.
      cardType.bigListTile => 3,
      cardType.smallCards => 4,
      cardType.cartListTile => 5,
      cardType.postCard => 6,
    };
  }
}

Widget foodCard({
  required Size size,
  FoodCardModel? foodModel,
  VoidCallback? onTap,
  cardType cardTypeOptions = cardType.card,
  required BuildContext context,
  // String? images,
  // String? text,
  // String? subtitle,
  // bool? isListTile = false,
}) {
  double height = size.height;
  double width = size.width;
  if (cardTypeOptions.cardTypeSwitch == 1) {
    return Container(
      width: width / 2.3,
      // height: width *0.8,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.orange.shade50,
            blurRadius: 20,
            spreadRadius: 10,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadiusGeometry.circular(20),
      ),
      child: Column(
        spacing: 15,
        // mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: width / 2.35,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Image.asset(
                foodModel?.image ?? '',
                filterQuality: FilterQuality.low,
                fit: BoxFit.cover,
                cacheWidth: 200,
                cacheHeight: 200,
              ),
              // filterQuality: FilterQuality.low,
              // clipBehavior: Clip.none,
            ),
          ),
          // const SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7),
            // height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  foodModel?.title ?? "",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Icon(CupertinoIcons.heart_fill),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('25 min'),
                Row(
                  spacing: 0,
                  children: [
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '4.7',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          TextSpan(
                            text: '(500+)',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            child: Row(
              // spacing: 2,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                ...List.generate(4, (index) {
                  return const Icon(Icons.star, size: 16, color: Colors.amber);
                }),
                Spacer(),
                // SizedBox(width: width * 0.02),
                Container(
                  padding: const EdgeInsets.all(0),
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.orange[200],
                    borderRadius: BorderRadiusGeometry.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '\$4.99',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  // child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text('Add to Cart', style: TextStyle(fontSize: 12)),
                  //     CircleAvatar(
                  //       radius: 10,
                  //       child: Icon(CupertinoIcons.cart, size: 15),
                  //     ),
                  //   ],
                  // ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  } else if (cardTypeOptions.cardTypeSwitch == 2) {
    return Container(
      width: width,
      // height: width * 0.3,
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusGeometry.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            // spreadRadius: 1
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            height: 75,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Image.asset(
                cacheHeight: 200,
                cacheWidth: 200,
                (foodModel?.image ?? ''),
                filterQuality: FilterQuality.low,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: width * 0.02,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        foodModel?.title ?? 'No text',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusGeometry.circular(50),
                          border: Border.all(),
                          color: Colors.amber[50],
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.star, size: 20, color: Colors.amber),
                            Text('4.9'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    foodModel?.subTitle ?? 'No subtitle',
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    softWrap: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  } else if (cardTypeOptions.cardTypeSwitch == 3) {
    return Container(
      width: width,
      // height: width * 0.3,
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        // color: Colors.white,
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadiusGeometry.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.green.shade300,
            blurRadius: 12,
            offset: Offset(5, 6),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 12,
        children: [
          SizedBox(
            // height: 130,
            // width: 130,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(15),
              child: Image.asset(
                fit: BoxFit.cover,
                height: 120,
                cacheWidth: 200,
                cacheHeight: 200,
                (foodModel?.image ?? ''),
                filterQuality: FilterQuality.low,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                // spacing: width * 0.02,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  // SizedBox(height: 7,),
                  Text(
                    foodModel?.title ?? 'No text',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    softWrap: false,
                  ),
                  Text(
                    foodModel?.subTitle ?? 'No subtitle',
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    softWrap: false,
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(50),
                      // border: Border.all(),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Text(
                          '4.9 (500+)',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            // color: Colors.grey.shade300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(50),
                      // border: Border.all(),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ 3.99',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        // discoverButton( btnText: 'Cancel', onTap: () {  }, context: context, color: Colors.red),
                        myRoundedButton(
                          size: Size(120, 45),
                          color: Colors.red,
                          onTap: onTap,
                          btnText: 'Cancel',
                          icon: Icons.cancel,
                        ),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   style: ButtonStyle(
                        //     padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 11)),
                        //     backgroundColor: WidgetStatePropertyAll(Colors.orange)
                        //   ),
                        //   child: Row(
                        //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     spacing: 10,
                        //     children: [
                        //       Text('Details', style: TextStyle(color: Colors.white),),
                        //       Icon(Icons.arrow_forward, weight: 50),
                        //     ],
                        //   ),
                        // ),
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
  } else if (cardTypeOptions.cardTypeSwitch == 4) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: width * 0.2,
      height: width * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.orange[50],
        // boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image.asset(
              ( // AppImages.categoryImages[index],
              foodModel?.image ?? ''),
              cacheHeight: 200,
              cacheWidth: 200,
            ),
          ),
          Text(
            // AppTexts.categoryTexts[index],
            foodModel?.title ?? '',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          ),
        ],
      ),
    );
  } else if (cardTypeOptions.cardTypeSwitch == 5) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.orange.shade50,
            spreadRadius: 1,
            blurRadius: 30,
          ),
        ],
      ),
      width: width,
      height: 120,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.asset(
                cacheHeight: 200,
                cacheWidth: 200,
                foodModel?.image ?? '',
                filterQuality: FilterQuality.low,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Burger'),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.delete,
                            color: Colors.red[100],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Fresh meat and cheese',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$3.99'),
                        Container(
                          width: width / 3.4,
                          padding: EdgeInsets.all(0),
                          // height: width *0.1,
                          // padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            // color: Colors.black26,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadiusGeometry.circular(50),
                          ),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(CupertinoIcons.minus, size: 15),
                                onPressed: () {},
                              ),
                              Text(
                                '0',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              IconButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(CupertinoIcons.add, size: 15),
                                onPressed: () {},
                              ),
                            ],
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
    ;
  } else {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            foodModel?.image ?? "",
            height: 250,
            width: width,
            filterQuality: FilterQuality.low,
            cacheWidth: 200,
            cacheHeight: 200,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodModel?.title ?? "no title",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  spacing: 6,
                  children: [
                    Icon((Icons.star), color: Colors.amber),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.grey.shade500),
                        children: [
                          TextSpan(
                            text: '4.9 ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: '(124 ratings) Cafe'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FoodCardModel {
  String? image;
  String? title;
  String? subTitle;

  FoodCardModel({this.image = '', this.title = '', this.subTitle = ''});

  FoodCardModel copyWith({String? image, String? title, String? subTitle}) {
    return FoodCardModel(
      image: image ?? this.image,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
    );
  }
}

Widget myRoundedButton({
  Size? size,
  Color? color,
  String? btnText,
  IconData? icon,
  VoidCallback? onTap,
}) {
  double? height = size?.height ?? 60;
  double? width = size?.width;

  final brightness = ThemeData.estimateBrightnessForColor(
    color ?? Colors.transparent,
  );
  final textColor =
      (brightness == Brightness.dark) ? Colors.white : Colors.orangeAccent;

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadiusGeometry.circular(50),
      border: Border.all(color: Colors.orange),
    ),
    width: width,
    height: height,
    child: ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(color ?? Colors.deepOrange),
        foregroundColor: WidgetStatePropertyAll(textColor),
        elevation: WidgetStatePropertyAll(7),
        shadowColor: WidgetStatePropertyAll(Colors.deepOrange.shade500),
        overlayColor: WidgetStatePropertyAll(Colors.orange),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: (icon != null ? 4 : 0),
          children: [
            Visibility(visible: icon != null ? true : false, child: Icon(icon)),
            Text(
              btnText ?? 'No text',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ),
  );
}
