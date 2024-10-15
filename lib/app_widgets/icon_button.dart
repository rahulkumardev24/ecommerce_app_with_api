import 'package:ecommerce_app_api/constrants/app_colors.dart';
import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onPressed;
  final Color buttonBgColor;

  // Constructor
  MyIconButton({
    super.key,
    required this.iconPath,
    required this.onPressed,
    this.buttonBgColor = AppColors.secondaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: buttonBgColor, // Use the customizable color
        borderRadius: BorderRadius.circular(100), // Circular shape
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(iconPath), // Display the icon
      ),
    );
  }
}
