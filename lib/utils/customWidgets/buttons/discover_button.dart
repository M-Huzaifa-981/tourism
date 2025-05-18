import 'package:flutter/material.dart';

import '../../../screens/discover_screen.dart';
import '../../constants/app_colors.dart';

Widget discoverButton({required VoidCallback onTap,required BuildContext context}){
  return ElevatedButton(
    onPressed: onTap,
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.greenColor,       // Button background
      foregroundColor: Colors.white,       // Text/Icon color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11), // Rounded corners
      ),
      padding: EdgeInsets.symmetric(vertical: 14), // Optional: taller button
    ),
    child: Text(
      "Discover More",
      style: TextStyle(fontSize: 16),
    ),
  );
}