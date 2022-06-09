import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:tab_mob/widgets/searchbar.dart';

// ignore: must_be_immutable
class SearchFilterCards extends StatelessWidget {
  SearchFilterCards({
    Key? key,
    required this.onTapFunc,
  }) : super(key: key);
  VoidCallback onTapFunc;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            width: Get.width * 0.7,
            child: const SearchBar(),
          ),

          InkWell(
            onTap: onTapFunc,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: kSpecialColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(12.5),
              child: Icon(
                Icons.line_axis,
                color: kSpecialColor,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
