import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/utils/constants.dart';

import 'bigcustomcard.dart';
class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  var items = [
    BigCustomCard(imageUrl: kimageUrl),
    BigCustomCard(imageUrl: kimageUrl),
    BigCustomCard(imageUrl: kimageUrl),
    BigCustomCard(imageUrl: kimageUrl),
    BigCustomCard(imageUrl: kimageUrl),
  ];
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: kisMobile ? Get.height * 0.25 : Get.height * 0.3,
        width: kisMobile ? Get.width : Get.width,
        child: CarouselSlider(
          items: items,
          carouselController: _controller,
          options: CarouselOptions(
            //padEnds: true,
            disableCenter: true,
            //pageSnapping: false,
              enableInfiniteScroll:false,
              //autoPlay: true,
              enlargeCenterPage: true,
             // aspectRatio: /4,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: items.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: kisMobile ? 7 : 10.0,
              height: kisMobile ? 7 : 10.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : kSpecialColor)
                    .withOpacity(_current == entry.key ? 1 : 0.3),
              ),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
