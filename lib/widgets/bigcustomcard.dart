import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/screens/details.dart';
import 'package:tab_mob/utils/constants.dart';

// ignore: must_be_immutable
class BigCustomCard extends StatelessWidget {
  BigCustomCard({Key? key, required this.imageUrl}) : super(key: key);
  String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: kisMobile ? Get.width * 0.95 : Get.width / 2.1,
      //height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.25), BlendMode.darken),
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Text(
                    'Mostrador derecha',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: kisMobile ? 12 : 15,
                    ),
                  ),
                ),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bebé y mamá',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: kisMobile ? 13 : 17,
                    letterSpacing: 1.1,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '1.000€',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: kisMobile ? 18 : 20,
                    letterSpacing: 1.1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                      () => const DetailsScreen(),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        'Ver detalles',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: kisMobile ? 14 : 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 17,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
