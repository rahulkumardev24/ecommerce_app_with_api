import 'package:ecommerce_app_api/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../app_widgets/icon_button.dart';
import '../constrants/app_colors.dart';
import 'dashboard_screen.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
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
        title: const Text("Your Profile"),
        centerTitle: true,
      ),
      backgroundColor: AppColors.secondaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Profile Picture

                  /// ----------------------- User Info
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hey! Rahul Kumar',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Premium Member',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          // Icon and Points
                          Row(
                            children: [
                              Icon(Icons.monetization_on,
                                  color: Colors.amber, size: 24),
                              SizedBox(width: 4),
                              Text(
                                '760',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/image/rahul.jpg',
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            ///-------------------------------  Options List
            SizedBox(
              height: 400,
              child: ListView(
                children: [
                  profileOption(Icons.local_shipping, 'Orders'),
                  profileOption(Icons.card_giftcard, 'Coupons'),
                  profileOption(Icons.payment, 'Payment'),
                  profileOption(Icons.support_agent, 'Support'),
                  profileOption(Icons.share, 'Share'),
                ],
              ),
            ),

            /// Logout button
            SizedBox(
              width: 300,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15) ,), side: BorderSide(width: 2 , color: Colors.redAccent) ),
                  onPressed: () {},
                  child: Text(
                    "Logout",
                    style: mTextStyle16(mColor: Colors.red),
                  )),
            )
          ],
        ),
      ),
    );
  }

  /// --------------------------------FUNCTION -------------------------///
  Widget profileOption(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.yellow[100],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, size: 28, color: Colors.black),
              const SizedBox(width: 16),
              Text(title, style: mTextStyle16(mFontWeight: FontWeight.bold)),
            ],
          ),
          const Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
        ],
      ),
    );
  }
}
