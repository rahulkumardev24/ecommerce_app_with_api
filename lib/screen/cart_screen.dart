import 'package:ecommerce_app_api/app_widgets/cart_card.dart';
import 'package:ecommerce_app_api/app_widgets/icon_button.dart';
import 'package:ecommerce_app_api/app_widgets/my_text_button.dart';
import 'package:ecommerce_app_api/constrants/app_colors.dart';
import 'package:ecommerce_app_api/screen/dashboard_screen.dart';
import 'package:ecommerce_app_api/screen/home_screen.dart';
import 'package:ecommerce_app_api/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

TextEditingController discountController = TextEditingController();

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: MyIconButton(
            iconPath: "assets/icon/left.png",
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashBordScreen()));
            },
            buttonBgColor: Colors.white,
          ),
        ),
        title: const Text("My Cart"),
        centerTitle: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          ///  ------------------  Cart cart ---------------------///
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                CartCard(
                  title: "Woman Sweter",
                  subtitle: "Woman Fashion",
                  imagePath: "assets/image/women sweter.png",
                  price: 70.00,
                ),
                SizedBox(
                  height: 10,
                ),
                CartCard(
                  title: "Smart Watch",
                  subtitle: "Electronic",
                  imagePath: "assets/image/smart watch.png",
                  price: 55.00,
                ),
                SizedBox(
                  height: 10,
                ),
                CartCard(
                  title: "Wireless Headphone",
                  subtitle: "Electronic",
                  imagePath: "assets/image/headphone.webp",
                  price: 120.00,
                ),
              ],
            ),
          ),
          const Spacer(),

          Container(
            height: 250,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),

                  /// --------------------------- Discount box -----------------------
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.cardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: discountController,
                            decoration: InputDecoration(
                              hintText: "Enter Discount Code",
                              hintStyle: mTextStyle14(
                                mColor: Colors.black45,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text(
                            "Apply",
                            style: mTextStyle14(
                              mFontWeight: FontWeight.bold,
                              mColor: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal",
                        style: mTextStyle16(mColor: Colors.black45),
                      ),
                      Text("\$245.00",
                          style: mTextStyle16(mFontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                  Container(
                    width: 420,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.secondaryColor, width: 1)),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",
                          style: mTextStyle14(mFontWeight: FontWeight.bold)),
                      Text("\$245.00",
                          style: mTextStyle16(mFontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: MyTextButton(
                          buttonText: "Checkout",
                          buttonColor: AppColors.primaryColor,
                          onPressed: () {}))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
