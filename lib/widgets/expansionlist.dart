import 'package:flutter/material.dart';
import 'package:tab_mob/models/detailsmodel.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:velocity_x/velocity_x.dart';



// ignore: must_be_immutable
class ExpansionList extends StatefulWidget {
   ExpansionList({Key? key,required this.items}) : super(key: key);
  List<ExpansionDetailsModel> items;
  @override
  State<ExpansionList> createState() => _ExpansionListState();
}

class _ExpansionListState extends State<ExpansionList> {
  
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 0,
      dividerColor: kSpecialColor,
      expansionCallback: ((panelIndex, isExpanded) {
        setState(() {
          widget.items[panelIndex].isExpanded = !widget.items[panelIndex].isExpanded;
        });
      }),
      children: widget.items.map((ExpansionDetailsModel expansionItem) {
        return ExpansionPanel(
          backgroundColor: kBgColor,
          headerBuilder: (context, isExpanded) {
            return Container(
              padding: const EdgeInsets.all(10),
                child: Row(

              children: [
                Icon(expansionItem.header.iconName),
                const SizedBox(width: 10,),
                expansionItem.header.title.text
                    .fontWeight(FontWeight.w300)
                    .minFontSize(14)
                    .make(),
              ],
            ));
          },
          body: Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.symmetric(vertical:7.0,horizontal: 10),
            child: expansionItem.body.text.justify.minFontSize(13).make(),
          ),
          isExpanded: expansionItem.isExpanded,
        );
      }).toList(),
    );
  }
}
