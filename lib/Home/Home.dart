import 'package:cinemana_clone/MainColors.dart';
import 'package:flutter/material.dart';

import 'ImagesModel.dart';
import 'carousel_section.dart';
import '../Reusable Widgets/first_row_search_bar.dart';
import 'movies and shows section/featured_section.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          // controller: controller,
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SearchBar(pageName: "Home"),
              ),
              CarouselSection(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: FeaturedSection(featureText: "Featured Movies",hash: "8B7BCDC2"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: FeaturedSection(featureText: "Featured Series",hash: "500B67FB"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: FeaturedSection(featureText: "Marvel Movies",hash: "A89D0DE6"),
              ),
            ],
          ),
        ),
      );
  }
}
