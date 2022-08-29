import 'package:flutter/material.dart';

import '../MainColors.dart';

class ProfileEditCard extends StatelessWidget {
  final List<Map> cardInfo;

  const ProfileEditCard({
    Key? key,
    required this.cardInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            color: MainColors.shadowedMainColor,
            width: double.maxFinite,
            child: Column(
              children: List.generate(cardInfo.length, (index) {
                return ListTile(
                  leading: cardInfo[index]['icon'],
                  title: cardInfo[index]['title'],
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white60,
                    size: 20,
                  ),
                );
              }),
            ),
          );
  }
}
