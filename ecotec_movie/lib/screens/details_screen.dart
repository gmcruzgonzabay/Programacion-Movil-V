import 'package:ecotec_movie/models/movie.dart';
import 'package:flutter/material.dart';

import 'widgets/movie_image.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)?.settings.arguments;
    if (argument is! Movie) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: Text('Película no disponible.')),
      );
    }
    final movie = argument;
    return Scaffold(
      appBar: AppBar(title: Text(movie.title ?? 'Sin título')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MovieImage(
              url: movie.backdropUrl ?? movie.posterUrl,
              width: double.infinity,
              height: 220,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: MovieImage(
                      url: movie.posterUrl,
                      width: 160,
                      height: 240,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    movie.title ?? 'Sin título',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Sinopsis',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(movie.description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
