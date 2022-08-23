import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'ImagesModel.dart';

class CarouselSection extends StatelessWidget {
  const CarouselSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: ImagesModel.carouselImages.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child:Image.asset(ImagesModel.carouselImages[itemIndex],fit: BoxFit.fill,), ),
          ),
      options: CarouselOptions(viewportFraction: 0.9,height: 170,autoPlay: true),
    );
  }
}
