import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/constants.dart';


class CustomSheetAlertWidget extends StatelessWidget {
  const CustomSheetAlertWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: Get.height * 0.5,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              '  Formación en Dermocosmética'
                  .text
                  .minFontSize(18)
                  .fontWeight(FontWeight.w600)
                  .make(),
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Icon(
                Icons.description_outlined,
                color: kSpecialColor,
              ),
              SizedBox(
                width: Get.width * 0.04,
              ),
              Expanded(
                child: AutoSizeText(
                  'Buenos días, Estoy interesado en potenciar las ventas de dermocosmetica en mi Farmacia a partir de Enero 2022. Estaré encantado de recibir a Formadores a partir del día 03 de enero.',
                  style: TextStyle(
                      fontSize: kisMobile ? 14 : 12,
                      fontWeight: FontWeight.w300),
                  minFontSize: kisMobile ? 13 : 10,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            children: [
               Icon(
                Icons.date_range_outlined,
                color: kSpecialColor,
              ),
              SizedBox(
                width: Get.width * 0.04,
              ),
              '03-01-2022'.text.make()
            ],
          ),
          Row(
            children: [
               Icon(
                Icons.timer_outlined,
                color: kSpecialColor,
              ),
              SizedBox(
                width: Get.width * 0.04,
              ),
              '13:00 horas'.text.make()
            ],
          ),
          Row(
            children: [
               Icon(
                Icons.people,
                color: kSpecialColor,
              ),
              SizedBox(
                width: Get.width * 0.04,
              ),
              'Julia Treviño Pedroza'.text.make()
            ],
          ),
          Row(
            children: [
               Icon(
                Icons.house_outlined,
                color: kSpecialColor,
              ),
              SizedBox(
                width: Get.width * 0.04,
              ),
              'Farmacia nombre'.text.make()
            ],
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
