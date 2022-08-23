import 'dart:math';

import 'package:cinemana_clone/Reusable%20Widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../MainColors.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: MainColors.imdbColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 2.5),
                          child: CinemanaText(
                            text: "IMDB",
                            fontsize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      CinemanaText(
                        text:
                            "${(Random().nextDouble() * 10).toStringAsFixed(2)}",
                        fontsize: 18,
                      )
                    ],
                  );
  }
}