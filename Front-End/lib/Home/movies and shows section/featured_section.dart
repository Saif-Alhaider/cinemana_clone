import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:cinemana_clone/Home/movies%20and%20shows%20section/second_row.dart';
import 'package:cinemana_clone/Reusable%20Widgets/text_widget.dart';

import '../ImagesModel.dart';
import 'first_row.dart';

class FeaturedSection extends StatelessWidget {
  final String featureText;
  final String hash;
  const FeaturedSection({
    Key? key,
    required this.featureText,
    required this.hash,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FirstRow(featureText: featureText),
        SizedBox(height: 15),
        SecondRow(hash: hash),
        
      ],
    );
  }
}
