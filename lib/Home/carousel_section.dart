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
                child:CachedNetworkImage(
                        imageUrl:
                            ImagesModel.carouselImages[itemIndex],
                        fit: BoxFit.cover,
                        placeholder: (context, url) {
                          return Center(
                              child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: new CircularProgressIndicator(),
                          ));
                        },
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ) ),
          ),
      options: CarouselOptions(viewportFraction: 0.9,height: 170,autoPlay: true),
    );
  }
}
