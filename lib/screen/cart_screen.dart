import 'package:ecommerce_app_api/app_widgets/icon_button.dart';
import 'package:ecommerce_app_api/constrants/app_colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyIconButton(iconPath: "assets/icon/left.png", onPressed: (){} , buttonBgColor: Colors.white,),
        ),
        title: const Text("My Cart"),
        centerTitle: true,
      ),
      backgroundColor:AppColors.backgroundColor,

      body: Column(
        children: [
          Text(" My cart")
        ],
      ),
    );
  }
}
