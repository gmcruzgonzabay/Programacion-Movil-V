import 'package:ecotec_movie/screens/details_screen.dart';
import 'package:ecotec_movie/models/movie.dart';
import 'package:ecotec_movie/screens/widgets/movie_image.dart';
import 'package:ecotec_movie/screens/widgets/movie_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Construye imágenes y conserva la sinopsis de TMDB', () {
    final movie = Movie.fromJson({
      'title': 'Película de prueba',
      'poster_path': '/poster.jpg',
      'backdrop_path': '/fondo.jpg',
      'overview': 'Una aventura en Ecuador.',
      'release_date': '',
    });
    expect(movie.posterUrl, 'https://image.tmdb.org/t/p/w500/poster.jpg');
    expect(movie.backdropUrl, 'https://image.tmdb.org/t/p/w500/fondo.jpg');
    expect(movie.description, 'Una aventura en Ecuador.');
    expect(movie.releaseDate, isNull);
    expect(Movie(posterPath: ' ').posterUrl, isNull);
    expect(Movie(overview: ' ').description, 'Descripción no disponible.');
  });

  testWidgets('Muestra datos reales y abre la sinopsis completa', (
    tester,
  ) async {
    final movie = Movie(
      title: 'Película de prueba',
      overview: 'Una aventura en Ecuador.',
    );
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: MovieSlider(movies: [movie])),
        routes: {'details': (_) => const DetailsScreen()},
      ),
    );
    expect(find.text(movie.title!), findsOneWidget);
    expect(find.text(movie.overview!), findsOneWidget);
    expect(tester.widget<MovieImage>(find.byType(MovieImage)).url, isNull);
    await tester.tap(find.text(movie.title!));
    await tester.pumpAndSettle();
    expect(find.byType(DetailsScreen), findsOneWidget);
    expect(find.text('Sinopsis'), findsOneWidget);
    expect(find.text(movie.overview!), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
