import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constrants/app_colors.dart';
import '../utils/custom_text_style.dart';

class MyItemCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;

  const MyItemCard({
    super.key,
    required this.imagePath, // Image path for the product
    required this.title, // Title of the product
    required this.price, // Price of the product
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: AppColors.secondaryColor,
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath, // Use the passed image path
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  title, // Use the passed title
                  style: mTextStyle16(mFontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price, // Use the passed price
                      style: mTextStyle14(mFontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: AppColors.colorList[index],
                              shape: BoxShape.circle,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(5),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0), // Apply 10 dp padding
                child: Image.asset(
                  "assets/icon/heart.png",
                  color: Colors.white,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
