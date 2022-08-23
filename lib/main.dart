import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Home/Home.dart';
import 'Movies/MoviesMain.dart';
import 'main_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/",
      routes: {
        "/": (context) => MainPage(),
        "/movies":(context) => Movies()
      },
    );
  }
}
