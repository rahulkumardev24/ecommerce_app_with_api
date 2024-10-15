import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> sliderItems = [
      // First
      Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: const DecorationImage(
            image: AssetImage("assets/image/banner1.webp"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: const DecorationImage(
            image: AssetImage("assets/image/banner2.webp"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: const DecorationImage(
            image: AssetImage("assets/image/banner3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];

    return CarouselSlider(
      items: sliderItems,
      options: CarouselOptions(
        height: 150,
        viewportFraction: 0.89, // Adjust to show next and previous images
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true, // Center image will be larger
        enlargeFactor: 0.3,
        onPageChanged: (index, reason) {},
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
