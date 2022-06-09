import 'package:flutter/material.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class ChipWidget extends StatefulWidget {
  ChipWidget({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: ChoiceChip(
        onSelected: (val) {
          setState(() {
            isSelected = val;
          });
        },
        shape: RoundedRectangleBorder(
          side: BorderSide(color: kSpecialColor.withOpacity(0.4), width: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        disabledColor: kBgColor,
        backgroundColor: Colors.transparent,
        selectedColor: kSpecialColor,
        label: widget.title.text
            .minFontSize(10)
            .fontWeight(FontWeight.w300)
            .color(
              isSelected ? kBgColor : Colors.black87,
            )
            .make(),
        selected: isSelected,
      ),
    );
  }
}
