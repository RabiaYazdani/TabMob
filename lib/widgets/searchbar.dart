import 'package:flutter/material.dart';
import 'package:tab_mob/utils/constants.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kSpecialColor,
      style:  TextStyle(color: kSpecialColor),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: kSpecialColor
            .withOpacity(0.035), //const Color(0xFFF9FAFE),
        // focusColor: kSpecialColor,
        // hoverColor: kSpecialColor,
        prefixIcon: Icon(
          Icons.search,
          color: kSpecialColor.withOpacity(0.4),
        ),
        hintText: "Buscar por nombre",
        hintStyle: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300,
          color: kSpecialColor.withOpacity(0.4),
        ),
        iconColor: kSpecialColor,
      ),
    );
  }
}
