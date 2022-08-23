import 'package:flutter/material.dart';

import '../Reusable Widgets/text_widget.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double centeringSquare = 35;
    return SizedBox(
      height: 50,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            // color: Colors.yellow,
            width: centeringSquare,
            height: centeringSquare,
          ),
          const CinemanaText(text: "Home",fontsize: 25,),
          Icon(Icons.search, size: centeringSquare, color: Colors.white)
        ],
      ),
    );
  }
}
