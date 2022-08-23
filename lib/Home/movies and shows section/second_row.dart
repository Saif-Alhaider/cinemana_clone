import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemana_clone/Reusable%20Widgets/movie_card/movie_poster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../MainColors.dart';
import '../../Reusable Widgets/movie_card/movie_card.dart';
import '../../Reusable Widgets/movie_card/rating_secton.dart';
import '../../Reusable Widgets/movie_card/title_section.dart';
import '../../Reusable Widgets/text_widget.dart';

class SecondRow extends StatelessWidget {
  final String hash;
  const SecondRow({
    Key? key,
    required this.hash,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 271,
      width: double.maxFinite,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
              width: 150,
              child: MovieCard(hash: hash, index: index),
            ),
          );
        },
      ),
    );
  }
}
