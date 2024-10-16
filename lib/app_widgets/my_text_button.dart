import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constrants/app_colors.dart';
import '../utils/custom_text_style.dart';

class MyTextButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final VoidCallback onPressed;

  const MyTextButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
      child: Text(
        buttonText,
        style: mTextStyle16(mColor: Colors.white),
      ),
    );
  }
}
