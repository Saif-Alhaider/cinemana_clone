import 'package:flutter/material.dart';

import 'text_widget.dart';

class SearchBar extends StatelessWidget {
  final String pageName;
  const SearchBar({
    Key? key,
    required this.pageName,
  }) : super(key: key);

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
          CinemanaText(text: pageName,fontsize: 25,),
          Icon(Icons.search, size: centeringSquare, color: Colors.white)
        ],
      ),
    );
  }
}
