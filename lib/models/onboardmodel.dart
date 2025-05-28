import 'package:flutter/material.dart';

class OnBoardingModel {
  final String title;
  final String subTitle;
  final ImageProvider image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subTitleColor;

  OnBoardingModel({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subTitleColor,
  });
}
