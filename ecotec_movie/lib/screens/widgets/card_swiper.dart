import 'package:card_swiper/card_swiper.dart';
import 'package:ecotec_movie/models/movie.dart';
import 'package:flutter/material.dart';

import 'movie_image.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key, required this.size, required this.movies});

  final Size size;
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    if (movies.isEmpty) return const SizedBox.shrink();
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.5,
      child: Swiper(
        itemCount: movies.length,
        itemHeight: size.height * 0.5,
        itemWidth: size.width * 0.7,
        layout: SwiperLayout.STACK,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, 'details', arguments: movies[index]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: MovieImage(url: movies[index].posterUrl),
          ),
        ),
      ),
    );
  }
}
