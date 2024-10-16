import 'package:ecommerce_app_api/app_widgets/icon_button.dart';
import 'package:ecommerce_app_api/app_widgets/my_text_button.dart';
import 'package:ecommerce_app_api/screen/dashboard_screen.dart';
import 'package:ecommerce_app_api/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../constrants/app_colors.dart';

class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({super.key});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyIconButton(
            iconPath: "assets/icon/left.png",
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> const DashBordScreen()));
            },
            buttonBgColor: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyIconButton(
                iconPath: "assets/icon/share.png",
                onPressed: () {},
                buttonBgColor: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyIconButton(
                iconPath: "assets/icon/heart.png",
                onPressed: () {},
                buttonBgColor: Colors.white),
          ),
        ],
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/image/headphone.webp",
                height: 300,
                fit: BoxFit.cover,
              ),
              Expanded(
                  child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wireless Headphone",
                          style: mTextStyle25(mFontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$520.00",
                          style: mTextStyle25(mFontWeight: FontWeight.bold),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: AppColors.primaryColor),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.white,size: 15,
                                      ),
                                      Text(
                                        "4.8",
                                        style: mTextStyle14(
                                            mColor: Colors.white,
                                            mFontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "(320 Review)",
                                  style: mTextStyle14(mColor: Colors.black45),
                                )
                              ],
                            ),
                            Text(
                              "Seller: Tariqul isalm",
                              style: mTextStyle16(mFontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        /// -----------------Color----------------------///
                        Text(
                          "Color",
                          style: mTextStyle16(mFontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 60,
                          child: ListView.builder(
                            itemCount: AppColors.colorList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(horizontal: 8),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: AppColors.colorList[index],
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.colorList[index],
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.colorList[index], // Color of the inner circle
                                    border: Border.all(width: 2, color: Colors.white), // Border for the inner circle
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyTextButton(
                                buttonText: "Description",
                                buttonColor: AppColors.primaryColor,
                                onPressed: () {}),
                            const Text("Specifications"),
                            const Text("Reviews"),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                            "With up to 40 hours of battery life, Beats Solo3 Wireless are your perfect everyday headphones. Get the most out of your music with an award-winning, emotionally charged Beats listening experience."),
                      ],
                    ),
                  ),
                ),
              )),
            ],
          ),

          /// ------------------------ Black Box at the Bottom -------------------///
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff202020),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "-",
                              style: mTextStyle16(mColor: Colors.white),
                            ),
                            Text("1",
                                style: mTextStyle16(mColor: Colors.white)),
                            Text(
                              "+",
                              style: mTextStyle16(mColor: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          width: 200,
                          height: 50,
                          child: MyTextButton(
                            onPressed: () {},
                            buttonColor: AppColors.primaryColor,
                            buttonText: "Add to Cart",
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
