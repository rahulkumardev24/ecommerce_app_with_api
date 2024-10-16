import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constrants/app_colors.dart';
import '../utils/custom_text_style.dart';


class CartCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final double price;

  const CartCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.cardColor,
              ),
              child:
                  Image.asset(imagePath), // Use the imagePath from constructor
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title, // Use the title from constructor
                        style: mTextStyle16(mFontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.delete,
                          color:
                              Colors.red), // Add some styling for delete icon
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(subtitle), // Use the subtitle from constructor
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${price.toStringAsFixed(2)}", // Use the price from constructor
                        style: mTextStyle16(mFontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            color: AppColors.cardColor,
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: AppColors.backgroundColor),
                            boxShadow: const [
                              BoxShadow(color: Colors.black45, blurRadius: 2)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "-",
                              style: mTextStyle16(),
                            ),
                            Text("1", style: mTextStyle16()),
                            Text(
                              "+",
                              style: mTextStyle16(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
