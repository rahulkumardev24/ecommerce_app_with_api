import 'package:ecommerce_app_api/app_widgets/banner_slider.dart';
import 'package:ecommerce_app_api/app_widgets/icon_button.dart';
import 'package:ecommerce_app_api/app_widgets/my_item_card.dart';
import 'package:ecommerce_app_api/app_widgets/search_box.dart';
import 'package:ecommerce_app_api/constrants/app_constraints.dart';
import 'package:ecommerce_app_api/screen/item_details_screen.dart';
import 'package:ecommerce_app_api/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../constrants/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TextEditingController searchController = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -------------AAP BAR ---------------------///
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyIconButton(
              iconPath: "assets/icon/more.png",
              onPressed: () {},
            ),
            MyIconButton(
              iconPath: "assets/icon/notification.png",
              onPressed: () {},
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          children: [
            /// -----------------------SEARCH----------------------///
            const SizedBox(
              height: 10,
            ),
            SearchBox(searchController: searchController),
            const SizedBox(
              height: 20,
            ),

            /// -------------------SLIDER ---------------------------///
            const BannerSlider(),

            const SizedBox(
              height: 20,
            ),

            /// ------------------ Category -----------------------///
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: AppConstraints.mCategory.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: AssetImage(AppConstraints
                                      .mCategory[index]["imagePath"]),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          AppConstraints.mCategory[index]["title"],
                          style: mTextStyle16(),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),

            /// Special For You
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For You ",
                    style: mTextStyle25(),
                  ),
                  Text(
                    "see all",
                    style: mTextStyle16(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: GridView.builder(
                                itemCount: AppConstraints.cartItem.length,
                                gridDelegate:
                     SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,
                        mainAxisSpacing: 14 ,
                        childAspectRatio: 2/2.2,

                        crossAxisSpacing: 14),
                                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetailsScreen())) ;
                    },
                    child: MyItemCard(
                        imagePath: AppConstraints.cartItem[index]['imagePath'],
                        title: AppConstraints.cartItem[index]['title'],
                        price: "\$${AppConstraints.cartItem[index]['price']}"),
                  );
                                },
                              ),
                ))
          ],
        ),
      ),
    );
  }
}
