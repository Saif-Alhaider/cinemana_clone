import 'package:flutter/material.dart';

import '../../Reusable Widgets/text_widget.dart';

class FirstRow extends StatelessWidget {
  final String featureText;
  const FirstRow({
    Key? key,
    required this.featureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CinemanaText(
                text: featureText ,
                fontsize: 20,
                // color: Color.fromARGB(230, 255, 255, 255),
              ),
              CinemanaText(
                text: "Show More",
                fontsize: 20,
                // color: Color.fromARGB(230, 255, 255, 255),
              )
            ],
          );
  }
}
