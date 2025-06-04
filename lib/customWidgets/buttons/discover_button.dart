import 'package:flutter/material.dart';

import '../../../screens/discover_screen.dart';
import '../../utils/constants/app_colors.dart';

Widget discoverButton({required VoidCallback onTap, required String btnText,required BuildContext context}){
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
      btnText,
      style: TextStyle(fontSize: 16),
    ),
  );
}