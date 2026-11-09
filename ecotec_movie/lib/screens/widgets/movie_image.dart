import 'package:flutter/material.dart';

/// Muestra la imagen de TMDB o el recurso local si falta o falla la descarga.
class MovieImage extends StatelessWidget {
  const MovieImage({super.key, required this.url, this.width, this.height});

  final String? url;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    Widget fallback() => Image.asset(
      'assets/no-image.jpeg',
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
    if (url == null) return fallback();
    return Image.network(
      url!,
      width: width,
      height: height,
      fit: BoxFit.cover,
      errorBuilder: (_, error, stackTrace) => fallback(),
    );
  }
}
