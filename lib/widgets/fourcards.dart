import 'package:flutter/material.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:tab_mob/widgets/customcard.dart';

class FourCards extends StatelessWidget {
  const FourCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return kisMobile
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(title: 'Escaparate', imageUrl: kimageUrl),
                  CustomCard(title: 'Farmacia', imageUrl: kimageUrl),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(title: 'Mostrador', imageUrl: kimageUrl),
                  CustomCard(title: 'Televisión', imageUrl: kimageUrl),
                ],
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCard(title: 'Escaparate', imageUrl: kimageUrl),
              CustomCard(title: 'Mostrador', imageUrl: kimageUrl),
              CustomCard(title: 'Farmacia', imageUrl: kimageUrl),
              CustomCard(title: 'Televisión', imageUrl: kimageUrl),
            ],
          );
  }
}
