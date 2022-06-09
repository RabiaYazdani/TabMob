import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({Key? key, required this.title, required this.imageUrl})
      : super(key: key);
  String title;
  String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical:5),
      height: Get.height * 0.15,
      width: kisMobile ? Get.width * 0.45 : Get.width * 0.22,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.25), BlendMode.darken),
          image: NetworkImage(imageUrl),
        ),
        // color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      //margin: EdgeInsets.all(1.h),
      child: Center(
        child: title.text
            .fontWeight(FontWeight.w600)
            .color(kBgColor)
            .minFontSize(
              kisMobile ? 14 : 20,
            )
            .make(),
      ),
    );
  }
}
