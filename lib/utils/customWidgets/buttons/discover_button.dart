import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

Widget discoverButton({required VoidCallback onTap,required String btnText, required BuildContext context}){
  return ElevatedButton(
    onPressed: onTap,
    style: ElevatedButton.styleFrom(
      // backgroundColor: Theme.of(context).primaryColor,       // Button background
      foregroundColor: Colors.white,       // Text/Icon color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11), // Rounded corners
      ),
      padding: EdgeInsets.symmetric(vertical: 14), // Optional: taller button
    ),
    child: Text(
      btnText,
      style: TextStyle(fontSize: 16),
    ),
  );
}