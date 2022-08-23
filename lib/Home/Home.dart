import 'package:cinemana_clone/MainColors.dart';
import 'package:flutter/material.dart';

import 'ImagesModel.dart';
import 'carousel_section.dart';
import 'first_row_search_bar.dart';
import 'movies and shows section/featured_section.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.mainPageColor,
      body: SafeArea(
        child: SingleChildScrollView(
          // controller: controller,
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SearchBar(),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.local_movies), label: "Film"),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: "Tv"),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: "Layers"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Person"),
        ],
        backgroundColor: MainColors.mainPageColor,
        unselectedIconTheme:IconThemeData(color: Colors.grey,size: 40) ,
        selectedIconTheme: IconThemeData(color: MainColors.redPageColor,size: 40),
        showSelectedLabels: false,
      ),
    );
  }
}
