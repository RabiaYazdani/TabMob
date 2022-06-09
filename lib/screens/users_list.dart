


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_mob/utils/constants.dart';
import 'package:tab_mob/widgets/searchbar.dart';
import 'package:tab_mob/widgets/usercard.dart';
import 'package:tab_mob/models/usermodel.dart';
import 'package:velocity_x/velocity_x.dart';

class UsersListScreen extends StatelessWidget {
  const UsersListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userModel = UserModel(
      name: 'Carlos Álvarez Martin',
      imageUrl:
          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      rating: 5,
      reviews: 41,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBgColor,
        foregroundColor: kFgColor,
        elevation: 0.3,
        centerTitle: true,
        title: 'Asignar delegado'
            .text
            .fontWeight(FontWeight.w300)
            .minFontSize(14)
            .make(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'Delegados disponibles'
                .text
                .fontWeight(FontWeight.w300)
                .minFontSize(kisMobile ? 24 : 28)
                .make(),
            Container(
              height: 50,
              width: kisMobile ? double.infinity : Get.width / 2,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: const SearchBar(),
            ),
            Flexible(
              child: kisMobile
                  ? ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return UserCard(userModel: userModel);
                      },
                    )
                  : GridView.builder(
                      itemCount: 6,
                      gridDelegate:
                           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                          childAspectRatio: kisMobile? 2/1 : 3/1.45,),
                      itemBuilder: (context, index) {
                        return UserCard(
                          userModel: userModel,
                        );
                      }),
            ),
          ],
        ),
      ),
    );
  }
}

