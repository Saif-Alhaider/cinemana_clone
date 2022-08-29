import 'package:flutter/material.dart';

import '../Reusable Widgets/text_widget.dart';

abstract class CardsInfo {
  static final List<Map> secondCard = [
    {
      "title": CinemanaText(text: "Notifications"),
      "icon": const Icon(
        Icons.notifications,
        color: Colors.white,
        size: 40,
      ),
    },
    {
      "title": CinemanaText(text: "History"),
      "icon": const Icon(
        Icons.watch_later_outlined,
        color: Colors.white,
        size: 40,
      ),
    },
    {
      "title": CinemanaText(text: "Watch Later"),
      "icon": const Icon(
        Icons.watch_later,
        color: Colors.white,
        size: 40,
      ),
    },
    {
      "title": CinemanaText(text: "Favourite"),
      "icon": const Icon(
        Icons.favorite_border_outlined,
        color: Colors.white,
        size: 40,
      ),
    },
    {
      "title": CinemanaText(text: "Subscription"),
      "icon": const Icon(
        Icons.subscriptions_sharp,
        color: Colors.white,
        size: 40,
      ),
    },
    {
      "title": CinemanaText(text: "Downloads"),
      "icon": const Icon(
        Icons.download_sharp,
        color: Colors.white,
        size: 40,
      ),
    },
  ];
  static final List<Map> thirdCard = [
    {
      "title":CinemanaText(text: "Account Preferences") ,
      "icon": const Icon(
        Icons.display_settings,
        color: Colors.white,
        size: 30,
      )
    },{
      "title":CinemanaText(text: "App Settings") ,
      "icon": const Icon(
        Icons.settings,
        color: Colors.white,
        size: 30,
      )
    },{
      "title":CinemanaText(text: "Logout") ,
      "icon": const Icon(
        Icons.logout,
        color: Colors.white,
        size: 30,
      )
    },
  ];
}