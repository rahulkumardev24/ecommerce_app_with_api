import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app_api/constrants/app_colors.dart';
import 'package:ecommerce_app_api/screen/cart_screen.dart';
import 'package:ecommerce_app_api/screen/category_screen.dart';
import 'package:ecommerce_app_api/screen/favorites_screen.dart';
import 'package:ecommerce_app_api/screen/home_screen.dart';
import 'package:ecommerce_app_api/screen/user_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBordScreen extends StatefulWidget {
  const DashBordScreen({super.key});

  @override
  State<DashBordScreen> createState() => _dashBordScreenState();
}

class _dashBordScreenState extends State<DashBordScreen> {
  int _indexValue = 2;

  // list of screen that is to be shown on the tap of each item
  final List<Widget> _screenList = [
    const CategoryScreen() ,
    const FavoritesScreen() ,
    const HomeScreen() ,
    const CartScreen() ,
     UserProfileScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[
      _indexValue], // passing index value so screen will change dynamically
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: AppColors.primaryColor,
        color: Colors.white,
        index: _indexValue, // update index
        onTap: (index) {
          setState(() {
            _indexValue = index; // updating index on each tap
          });
        },

        items: [
          // _buildNavItem is a method that is used to build nav item using this to customize items because CurvedNavigationBar doesn't provide attribute to customize the nav item
          _buildNavItem("assets/icon/menu.png", ),
          _buildNavItem("assets/icon/heart.png", ),
          _buildNavItem("assets/icon/home.png",),
          _buildNavItem("assets/icon/trolley.png",),
          _buildNavItem("assets/icon/user.png",),
        ],

        backgroundColor: Colors.transparent,

        // speed of animation
        animationDuration: const Duration(milliseconds: 300),
      ),
    );
  }

  Widget _buildNavItem(String icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        width: 45,
        height: 45,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              icon,
              height: 30,
              width: 30,
            ),

          ],
        ),
      ),
    );
  }
}