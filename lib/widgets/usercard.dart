import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:tab_mob/models/usermodel.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class UserCard extends StatelessWidget {
  UserCard({Key? key, required this.userModel}) : super(key: key);
  UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: kisMobile ? double.infinity : Get.width/2.1,
      //height: Get.height*0.15,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: kisMobile ? Get.width * 0.22 : Get.width*0.15,
                height: Get.height*0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          userModel.imageUrl,
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 4.0),
                      child: userModel.name.text
                          .minFontSize(16)
                          .fontWeight(FontWeight.w600)
                          .make(),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            (userModel.rating.toString() + ',4 '.toString())
                                .text
                                .color(kSpecialColor)
                                .minFontSize(13)
                                .fontWeight(FontWeight.w600)
                                .make(),
                            Row(
                              children: [
                                Star(
                                    isFilled: userModel.rating >= 1 ? true : false),
                                Star(
                                    isFilled: userModel.rating >= 2 ? true : false),
                                Star(
                                    isFilled: userModel.rating >= 3 ? true : false),
                                Star(
                                    isFilled: userModel.rating >= 4 ? true : false),
                                Star(
                                    isFilled: userModel.rating == 5 ? true : false),
                              ],
                            ),
                            (' ${userModel.reviews}')
                                .text
                                .color(kSpecialColor)
                                .make(),
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            'Asignar espacio'
                                .text
                                .color(kSpecialColor)
                                .minFontSize(13)
                                .fontWeight(FontWeight.w600)
                                .make(),
                             Icon(
                              Icons.arrow_forward_ios,
                              size: 11.4,
                              color: kSpecialColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
         // const  SizedBox(
         //    height: 20,
             Divider(
              color: kSpecialColor,
              thickness: 0.25,
              height: 20,
            ),
         //  ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Star extends StatelessWidget {
  Star({Key? key, required this.isFilled}) : super(key: key);
  bool isFilled;
  @override
  Widget build(BuildContext context) {
    return Icon(
      isFilled ? Icons.star : Icons.star_border,
      color: kSpecialColor,
      size: 15,
    );
  }
}
