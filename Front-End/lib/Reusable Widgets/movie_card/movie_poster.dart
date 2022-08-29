import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final int index;
  final String hash;
  const MoviePoster({
    Key? key,
    required this.index,
    required this.hash,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    height: 200,
                    width: double.maxFinite,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://api.lorem.space/image/movie?w=150&h=${220 + index}&$hash",
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
                      ),
                    ),
                  );
  }
}
