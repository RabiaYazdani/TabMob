import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:tab_mob/widgets/bluebutton.dart';

class NotificationSentScreen extends StatelessWidget {
  const NotificationSentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/Confirmicon.png',
                    scale: kisMobile ? 1 : 0.65,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Notificación enviada',
                      style: TextStyle(
                        fontSize: kisMobile ? 24 : 28,
                        fontWeight: FontWeight.w600,
                        color: kSpecialColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: kisMobile ? 20 : Get.width * 0.18,
                    ),
                    child: Text(
                      'Hemos enviado con éxito una notificación al delegado de zona para que revise este espacio',
                      style: TextStyle(
                          fontSize: kisMobile ? 14 : 16,
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            BlueButton(
              buttonTitle: 'Entendido',
              onTapFunc: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
