# ECOTEC Movie

Aplicación Flutter que consulta las películas en cartelera de TMDB en español.

## Ejecutar

```sh
flutter pub get
flutter run
```

Se requiere conexión a Internet y una clave válida de TMDB en
`lib/providers/movies_provider.dart`.

## Imágenes y descripciones

- El proveedor consulta `/3/movie/now_playing` con `language=es-ES`.
- `Movie` convierte `poster_path` y `backdrop_path` en direcciones de imágenes
  con la base `https://image.tmdb.org/t/p/w500`.
- El carrusel principal y la lista horizontal muestran los pósteres reales.
  La lista también muestra el título y una sinopsis de hasta tres líneas.
- Al tocar una película en cualquiera de los dos carruseles se envía el objeto
  `Movie` a la ruta `details`. El detalle muestra el fondo, el póster, el título
  y la descripción completa (`overview`) en una vista desplazable.
- `MovieImage` utiliza `assets/no-image.jpeg` cuando no existe una imagen o
  falla su descarga. Una sinopsis vacía muestra “Descripción no disponible.”.
- Las fechas de estreno vacías no impiden cargar las películas.
- Android declara el permiso `INTERNET` en el manifiesto principal para permitir
  las consultas y las imágenes también en compilaciones de distribución.

## Validación

```sh
flutter analyze
flutter test
```

Las pruebas verifican las direcciones de imágenes, los datos ausentes, las
fechas vacías y la navegación desde la lista hasta la sinopsis completa.
Para comprobar las descargas reales, ejecutar con Internet y tocar un póster
del carrusel principal y de la lista horizontal.
