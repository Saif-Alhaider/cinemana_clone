import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../MainColors.dart';
import '../Reusable Widgets/first_row_search_bar.dart';
import '../Reusable Widgets/text_widget.dart';

class SeriesesMain extends StatelessWidget {
  const SeriesesMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children:  [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SearchBar(pageName: "Series"),
            ),
            GridView.builder(physics: NeverScrollableScrollPhysics(),shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing:4,
                mainAxisSpacing:4,
                childAspectRatio:0.45,
              ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
              width: 150,
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.maxFinite,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://api.lorem.space/image/movie?w=150&h=${220 + index}&225E6693",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.maxFinite,
                    height: 18,
                    child: CinemanaText(
                      text: lorem(paragraphs: 1, words: 2),
                      fontsize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
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
                  )
                ],
              ),
            ),
          );
              },
            )
          ],
        ),
      ),
    );
  }
}