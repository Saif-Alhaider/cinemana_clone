import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemana_clone/Reusable%20Widgets/movie_card/movie_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../Home/movies and shows section/second_row.dart';
import '../MainColors.dart';
import '../Reusable Widgets/first_row_search_bar.dart';
import '../Reusable Widgets/text_widget.dart';

class Movies extends StatefulWidget {
  String get pageName => "Movies";
  const Movies({Key? key}) : super(key: key);
  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  final String hash = "8B7BCDC2";
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
