import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/models/detailsmodel.dart';
Color kBgColor = Colors.white;
Color kFgColor = Colors.black;
Color kSpecialColor = const Color(0xFF2B4EE4);
const kimageUrl = 'https://images.unsplash.com/photo-1468174482686-1047396f13b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80';
bool kisMobile = Get.width<600 ? true: false;


List<ExpansionDetailsModel> kItems = [
    ExpansionDetailsModel(
      header: ExpHeader(
        iconName: Icons.shop,
        title: 'Descripción',
      ),
      body:
          'Curabitur dolor libero, laoreet eget posuere id, tristique vitae nisi. Suspendisse dictum orci magna, in viverra neque posuere congue. Vestibulum dignissim, felis ultricies pharetra luctus, nisl tortor pretium augue, quis mollis sem orci vitae ex. Pellentesque consequat ligula eros, eu lacinia lacus euismod eget. Duis tempus, nibh nec mattis laoreet, ipsum tellus placerat felis, quis eleifend leo ipsum vitae arcu. Sed vitae neque maximus, venenatis tortor consectetur, posuere eros. In maximus euismod purus et egestas. Sed porta urna id euismod eleifend. Nulla accumsan erat sit amet dui dignissim viverra. Pellentesque ac viverra nibh. Mauris pellentesque egestas risus vel dignissim. Aenean eget nisl ultrices, dapibus nunc nec, iaculis libero. Nunc eu augue quis enim tristique convallis. Aliquam arcu sapien, lacinia a mauris ut, aliquet interdum turpis. Proin posuere massa risus, vel tincidunt odio fringilla ut.',
    ),
    ExpansionDetailsModel(
      header: ExpHeader(
        iconName: Icons.add,
        title: 'Medidas',
      ),
      body: '40.00 x 30.00 x 20.00 (cm)',
    ),
    ExpansionDetailsModel(
      header: ExpHeader(
        iconName: Icons.access_alarm,
        title: 'Fecha de reserva',
      ),
      body: 'Fecha de inicio: 23/03/2022 \nFecha de finalización: 23/12/2022',
    ),
    ExpansionDetailsModel(
      header: ExpHeader(
        iconName: Icons.visibility,
        title: 'Visibilidad',
      ),
      body: 'Mostrador derecha',
    ),
    ExpansionDetailsModel(
      header: ExpHeader(
        iconName: Icons.price_check,
        title: 'Precio',
      ),
      body: '200€',
    )
  ];