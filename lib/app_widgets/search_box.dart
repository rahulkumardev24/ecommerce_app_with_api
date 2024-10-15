import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constrants/app_colors.dart';
import '../utils/custom_text_style.dart';

class SearchBox extends StatelessWidget {
  final TextEditingController searchController;

  const SearchBox({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 50,
        child: TextField(
          controller: searchController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            hintText: "Search",
            hintStyle: mTextStyle12(mColor: Colors.black38),
            filled: true,
            fillColor: AppColors.secondaryColor,
            prefixIcon: const Icon(Icons.search_outlined),
            prefixIconColor: Colors.black45,
            suffixIcon: Icon(Icons.filter_list_alt)
            

          ),
        ),
      ),
    );
  }
}
