import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/screens/notification_sent.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:tab_mob/widgets/bigcustomcard.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/searchfiltercards.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: kBgColor,
        foregroundColor: kFgColor,
        elevation: 0.3,
        centerTitle: true,
        title: 'Espacios'
            .text
            .fontWeight(FontWeight.w300)
            .minFontSize(
              Get.width < 600 ? 14 : 18,
            )
            .make(),
        actions: [
          IconButton(
            onPressed: () {
              Get.off(
                () => const NotificationSentScreen(),
              );
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.only(
            top: 15,
            left: 20,
            right: 20,
          ),
          child: kisMobile
              ? Column(
                  children: [
                    const SpecialCard(),
                    SearchFilterCards(
                      onTapFunc: (){},
                    ),
                    SizedBox(
                      //height: Get.height*0.75,
                      child: ListView.builder(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return SizedBox(
                                height: Get.height * 0.3,
                                child: BigCustomCard(imageUrl: kimageUrl));
                          }),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children:  [
                       const SpecialCard(),
                        const SizedBox(
                          width: 10,
                        ),
                        SearchFilterCards(onTapFunc: (){},),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: Get.height * 0.07,
                      child: 'Nuevos espacios añadidos'
                          .text
                          .fontWeight(FontWeight.w300)
                          .minFontSize(24)
                          .make(),
                    ),
                    SizedBox(
                      height: Get.height * 0.5,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 3 / 2,
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          return BigCustomCard(
                            imageUrl: kimageUrl,
                          );
                        },
                      ),
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        'Mostrar más'
                            .text
                            .minFontSize(16)
                            .color(kSpecialColor)
                            .fontWeight(FontWeight.w300)
                            .makeCentered(),
                            const SizedBox(width: 5,),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: kSpecialColor,
                          size: 18,
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}


class SpecialCard extends StatelessWidget {
  const SpecialCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            'Todos los espacios'
                .text
                .fontWeight(FontWeight.w300)
                .minFontSize(kisMobile ? 13 : 16)
                .color(kSpecialColor)
                .make(),
            const SizedBox(
              width: 10,
            ),
            Transform.rotate(
              angle: 90 * pi / 180,
              child: Icon(
                Icons.arrow_forward_ios,
                color: kSpecialColor,
                size: kisMobile ? 15 : 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
