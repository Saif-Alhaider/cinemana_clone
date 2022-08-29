import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../text_widget.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    width: double.maxFinite,
                    height: 18,
                    child: CinemanaText(
                      text: lorem(paragraphs: 1, words: 2),
                      fontsize: 18,
                    ),
                  );
  }
}