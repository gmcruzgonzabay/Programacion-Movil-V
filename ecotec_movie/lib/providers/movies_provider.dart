import 'package:ecotec_movie/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/movie_model.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = '5bd32ef97e1568a8582ee4c212d5c25c';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';
  List<Movie> onDisplayMovie = [];

  MoviesProvider() {
    debugPrint('Movies Provider Inicializado');
    getOnDIsplayMovies();
  }

  Future<void> getOnDIsplayMovies() async {
    debugPrint('getOnDisplayMovies');
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1',
    });

    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromRawJson(response.body);
    onDisplayMovie = nowPlayingResponse.results ?? [];

    notifyListeners();

    // final decodeData= json.decode(response.body);

    //final Map<String, dynamic> decodeData=json.decode(response.body);

    //debugPrint(decodeData['dates']['maximum']);
  } //Final de getOnDisplayMovie
}
