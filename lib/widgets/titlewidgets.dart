import 'package:flutter/material.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class TitleWidgets extends StatelessWidget {
  const TitleWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          '¿Qué tipo de espacio estás buscando hoy?'
              .text
              .fontWeight(FontWeight.w300)
              .minFontSize(
                kisMobile ? 18 : 24,
              )
              .make(),
          'Hay un total de 3.432 espacios disponibles'
              .text
              .minFontSize(
                kisMobile ? 13 : 16,
              )
              .start
              .make(),
        ],
      ),
    );
  }
}
