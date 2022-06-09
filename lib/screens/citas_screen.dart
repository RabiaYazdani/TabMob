import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/models/userproductomodel.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:tab_mob/widgets/filtersheetalert.dart';
import 'package:tab_mob/widgets/searchfiltercards.dart';
import 'package:tab_mob/widgets/userproductocard.dart';
import 'package:velocity_x/velocity_x.dart';

class CitasScreen extends StatelessWidget {
  const CitasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserProductoModel kModel = UserProductoModel(
      name: 'Julia Treviño Pedroza',
      imageUrl:
          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      dateString: '02-11-2021',
      timeString: '17:30',
    );

    void filterClicked() {
      kisMobile
          ? Get.bottomSheet(
              const FilterSheetAlertWidget(),
            )
          : showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const FilterSheetAlertWidget(),
                );
              });
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0.35,
        backgroundColor: kBgColor,
        foregroundColor: kFgColor,
        centerTitle: true,
        title: 'Citas de delegados'
            .text
            .minFontSize(14)
            .fontWeight(FontWeight.w300)
            .make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: kisMobile ? Get.width : Get.width * 0.65,
                //color: kSpecialColor,
                //height: Get.height * 0.1,
                child:  SearchFilterCards(onTapFunc: filterClicked,),
              ),
              SizedBox(
                height: Get.height * 0.78,
                width: kisMobile ? Get.width : Get.width * 0.55,
                child: ListView.builder(
                    itemCount: kisMobile ? 6 : 4,
                    itemBuilder: (context, index) {
                      return UserProductoCard(model: kModel);
                    }),
              ),
              kisMobile
                  ? Container()
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            'Mostrar más'
                                .text
                                .color(kSpecialColor)
                                .minFontSize(13)
                                .fontWeight(FontWeight.w600)
                                .make(),
                            const SizedBox(
                              width: 7,
                            ),
                            Transform.rotate(
                              angle: 90 * pi / 180,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: kSpecialColor,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.all(20),
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: kSpecialColor,
                            ),
                            child: 'Nueva cita'
                                .text
                                .color(kBgColor)
                                .minFontSize(14)
                                .fontWeight(FontWeight.w600)
                                .makeCentered(),
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
