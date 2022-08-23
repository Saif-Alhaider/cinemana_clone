import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../MainColors.dart';
import '../Reusable Widgets/first_row_search_bar.dart';
import '../Reusable Widgets/movie_card/movie_card.dart';
import '../Reusable Widgets/text_widget.dart';

class SeriesesMain extends StatefulWidget {
  String get pageName => "Series";

  const SeriesesMain({Key? key}) : super(key: key);

  @override
  State<SeriesesMain> createState() => _SeriesesMainState();
}

class _SeriesesMainState extends State<SeriesesMain> {

  final String hash = "225E6693";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                childAspectRatio: 0.45,
              ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: MovieCard(hash: hash, index: index),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}