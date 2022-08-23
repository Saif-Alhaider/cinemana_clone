import 'package:cinemana_clone/MainColors.dart';
import 'package:cinemana_clone/Reusable%20Widgets/text_widget.dart';
import 'package:flutter/material.dart';

import 'first_card.dart';
import 'profileUiModel.dart';
import 'second_card.dart';

class ProfileMain extends StatefulWidget {
  String get pageName => "User Profile";

  ProfileMain({Key? key}) : super(key: key);

  @override
  State<ProfileMain> createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FirstCard(),
        ProfileEditCard(cardInfo: CardsInfo.secondCard,),
        ProfileEditCard(cardInfo: CardsInfo.thirdCard,),
      ],
    );
  }
}
