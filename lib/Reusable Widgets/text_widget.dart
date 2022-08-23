import 'package:flutter/material.dart';

class CinemanaText extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color;
  final FontWeight fontWeight;

  const CinemanaText({
    Key? key,
    required this.text,
    this.fontsize = 25.0,
    this.color = const Color.fromARGB(210, 255, 255, 255),
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
            text,
            style: TextStyle(fontSize: fontsize, color: color,fontWeight: fontWeight),
          );
  }
}
