import 'package:flutter/material.dart';

import 'movie_poster.dart';
import 'rating_secton.dart';
import 'title_section.dart';

class MovieCard extends StatelessWidget {
  final String hash;
  final int index;
  const MovieCard({
    Key? key,
    required this.hash,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  MoviePoster(hash: hash,index: index,),
                  const SizedBox(height: 10),
                  const TitleSection(),
                  const SizedBox(height: 10),
                  const RatingSection(),
                ],
              );
  }
}
