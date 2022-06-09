import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/models/userproductomodel.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:tab_mob/widgets/customsheetalert.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class UserProductoCard extends StatelessWidget {
  UserProductoCard({Key? key, required this.model}) : super(key: key);
  UserProductoModel model;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        kisMobile
            ? Get.bottomSheet(
          const CustomSheetAlertWidget(),
        )
            : showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const CustomSheetAlertWidget(),
              );
            });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: kSpecialColor.withOpacity(0.25),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        padding: const EdgeInsets.all(
          25,
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                model.name.text.minFontSize(14).fontWeight(FontWeight.w600).make(),
                'Información de producto'.text.minFontSize(13).fontWeight(FontWeight.w300).make(),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    const Icon(Icons.date_range,size: 20,),
                    const SizedBox(width: 5,),
                    model.dateString.text.make(),
                    const SizedBox(width: 20,),
                    const Icon(Icons.alarm,size: 22,),
                    const SizedBox(width: 5,),
                    model.timeString.text.make()
                  ],
                )
              ],
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(model.imageUrl),
            )
          ],

        ),
      ),
    );
  }
}
