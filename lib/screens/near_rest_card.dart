import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'around_me_screen.dart';

Widget nearRestCard(Size size, int index) {
  return GestureDetector(
    onTap: (){
      Get.to(AroundMeScreen());
    },
    child: Card(
      child: Container(
        padding: EdgeInsets.all(5),
        width: size.width / 1.5,
        height: size.width / 1.27,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/img$index.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(7),
                child: Column(
                  spacing: size.width / 99,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text("The Ledbury"),
                    Text("127 Ledbury Road, London W11 2AQ"),
                    Spacer(),
                    Divider(height: 2),
                    Spacer(),
                    Text("There are more than 25k people"),
                    Text("recommend this."),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

