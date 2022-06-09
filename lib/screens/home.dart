import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/screens/calendarioscreen.dart';
import 'package:tab_mob/screens/citas_screen.dart';
import 'package:tab_mob/screens/listscreen.dart';
import 'package:tab_mob/screens/notification_sent.dart';
import 'package:tab_mob/screens/users_list.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:tab_mob/widgets/fourcards.dart';
import 'package:tab_mob/widgets/hrcarousel.dart';
import 'package:tab_mob/widgets/titlewidgets.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBgColor,
        foregroundColor: kFgColor,
        elevation: 0.3,
        centerTitle: true,
        title: 'Espacios'
            .text
            .fontWeight(FontWeight.w300)
            .minFontSize(
              kisMobile ? 14 : 18,
            )
            .make(),
        leading: IconButton(
          onPressed: () {
            Get.to(
              () => const CalendarioScreen(),
            );
          },
          icon: const Icon(Icons.calendar_today, size: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                () => const CitasScreen(),
              );
            },
            icon: const Icon(Icons.people),
          ),
          IconButton(
            onPressed: () {
              Get.to(
                () => const UsersListScreen(),
              );
            },
            icon: const Icon(Icons.list),
          ),
          IconButton(
            onPressed: () {
              Get.to(
                () => const NotificationSentScreen(),
              );
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SizedBox(
        height: Get.height*0.88,
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
             // color: Colors.red,
              height: Get.height * 0.12,
              width: Get.width,
              child: const TitleWidgets(),
            ),
            SizedBox(
              width: Get.width,
             // color: Colors.blue,
              //height: kisMobile ? Get.height * 0.3 : Get.height * 0.15,
              child: const FourCards(),
            ),
            Container(
              alignment: Alignment.center,
             // color: Colors.red,
              height: Get.height * 0.05,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => const ListScreen());
                    },
                    child: 'Mostrar todos'
                        .text
                        .color(kSpecialColor)
                        .minFontSize(
                          kisMobile ? 14 : 20,
                        )
                        .fontWeight(FontWeight.w600)
                        .make(),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
               // vertical: 20,
              ),
              //color: Colors.yellow,
              height: Get.height * 0.07,
              width: Get.width,
              child: 'Nuevos espacios añadidos'
                  .text
                  .justify
                  .fontWeight(FontWeight.w300)
                  .minFontSize(
                    kisMobile ? 18 : 24,
                  )
                  .make(),
            ),
             SizedBox(
               //color: Colors.orange,
              height: Get.height*0.3,
              child: const CarouselWithIndicatorDemo(),
            ),
          ],
        ),
      ),
    );
  }
}
