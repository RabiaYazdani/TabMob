import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/utils/constants.dart';

// ignore: must_be_immutable
class BlueButton extends StatelessWidget {
  BlueButton({
    Key? key,
    required this.buttonTitle,
    required this.onTapFunc,
  }) : super(key: key);
  String buttonTitle;
  VoidCallback onTapFunc;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunc,
      child: Container(
        width: kisMobile? double.infinity : Get.width*0.3,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFF2B4EE4),
        ),
        child:  Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize:kisMobile? 14 : 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
