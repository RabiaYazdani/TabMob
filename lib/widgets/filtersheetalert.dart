import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'chipwidget.dart';
import 'package:tab_mob/utils/constants.dart';

class FilterSheetAlertWidget extends StatelessWidget {
  const FilterSheetAlertWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration:  BoxDecoration(
        color: kBgColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
      height: Get.height * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              const Icon(
                Icons.line_axis,
              ),
              const SizedBox(
                width: 15,
              ),
              'Filtrar'.text.minFontSize(18).fontWeight(FontWeight.w600).make(),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.close,
                  size: 20,
                ),
              ),
            ],
          ),
          'Tipo de Cita'
              .text
              .minFontSize(14)
              .maxFontSize(14)
              .fontWeight(FontWeight.w400)
              .color(kSpecialColor)
              .make(),
          SizedBox(
            height: Get.height * 0.09,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ChipWidget(title: 'Presentación de producto'),
                ChipWidget(title: 'Seguimiento'),
                ChipWidget(title: 'Formación y webinars'),
              ],
            ),
          ),
          'Ámbito comercial'
              .text
              .minFontSize(14)
              .maxFontSize(14)
              .fontWeight(FontWeight.w400)
              .color(kSpecialColor)
              .make(),
          SizedBox(
            height: Get.height * 0.09,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ChipWidget(title: 'Bebé y mamá'),
                ChipWidget(title: 'Dermocosmética'),
                ChipWidget(title: 'Bebé y Mamá'),
                ChipWidget(title: 'Dermocosmética'),
              ],
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(
                10,
              ),
              alignment: Alignment.center,
              width: kisMobile ? double.infinity : 200,
              decoration: BoxDecoration(
                color: kSpecialColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: 'Aplicar'
                  .text
                  .color(kBgColor)
                  .minFontSize(15)
                  .fontWeight(FontWeight.w600)
                  .make(),
            ),
          ),
        ],
      ),
    );
  }
}
