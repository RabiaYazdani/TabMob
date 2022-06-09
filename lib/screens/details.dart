import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:tab_mob/widgets/bluebutton.dart';
import 'package:tab_mob/widgets/expansionlist.dart';
import 'package:tab_mob/widgets/hrcarousel.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Ficha espacio'
            .text
            .fontWeight(
              FontWeight.w300,
            )
            .minFontSize(
              kisMobile ? 14 : 16,
            )
            .make(),
        centerTitle: true,
        backgroundColor: kBgColor,
        foregroundColor: kFgColor,
        elevation: 0.35,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      'Mostrador derecha'
                          .text
                          .fontWeight(FontWeight.w600)
                          .minFontSize(24)
                          .make(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color(0xFF3AF6CC)),
                        child: Text(
                          'Reservado',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: kisMobile ? 12 : 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  'Bebé y mamá'
                      .text
                      .fontWeight(FontWeight.w300)
                      .minFontSize(14)
                      .make(),
                ],
              ),
            ),
            const CarouselWithIndicatorDemo(),
            const SizedBox(height: 20,),
            kisMobile
                ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0),
                  child: ExpansionList(
                      items: kItems,
                    ),
                )
                : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.red,
                        padding: const EdgeInsets.only(left: 20,right: 10),
                        width: Get.width / 2,
                        child: ExpansionList(
                          items: [kItems[0], kItems[1]],
                        ),
                      ),
                      Container(
                        // color: Colors.blue,
                         padding: const EdgeInsets.only(left: 10,right: 20),
                        width: Get.width / 2,
                        child: ExpansionList(
                          items: [
                            kItems[2],
                            kItems[3],
                            kItems[4],
                          ],
                        ),
                      ),
                    ],
                  ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 5,
                bottom: 10
              ),
              child: BlueButton(
                buttonTitle: 'Notificar a delegado',
                onTapFunc: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
