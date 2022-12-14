import 'package:cinemana_clone/Home/Home.dart';
import 'package:cinemana_clone/Categories/categories_main.dart';
import 'package:cinemana_clone/MainColors.dart';
import 'package:cinemana_clone/Movies/MoviesMain.dart';
import 'package:cinemana_clone/Profile/profile_main.dart';
import 'package:cinemana_clone/Serieses/serieses_main.dart';
import 'package:flutter/material.dart';

import 'Reusable Widgets/text_widget.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [Home(), Movies(), SeriesesMain(), CategoriesMain(), ProfileMain()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.mainPageColor,
        actions: [
          IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {},
            icon:const Icon(
              Icons.search,
              size: 35,
            ),
          ),
        ],
        elevation: 0,
        title: CinemanaText(
          text: pages[currentIndex].pageName,
          fontsize: 25,
        ),
        centerTitle: true,
      ),
      backgroundColor: MainColors.mainPageColor,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_movies), label: "Film"),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: "Tv"),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: "Layers"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Person"),
        ],
        backgroundColor: MainColors.mainPageColor,
        selectedIconTheme:
            IconThemeData(color: MainColors.redPageColor, size: 40),
        unselectedIconTheme: IconThemeData(color: Colors.grey, size: 40),
        showSelectedLabels: false,
      ),
    );
  }
}
