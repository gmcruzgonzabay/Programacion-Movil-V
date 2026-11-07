import 'package:ecotec_movie/models/movie.dart';
import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {

  final List<Movie> movies;
  const MovieSlider({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //todo el ancho de la pantalla
      height: 500,
    
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Populares',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 190,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,

              itemBuilder: (_, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: 130,
                  height: 190,
                 
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()=>Navigator.pushNamed(context, 'details',arguments: 'movie-instance'),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(15),
                          child: FadeInImage(
                            placeholder: AssetImage('assets/no-image.jpeg'),
                            image: NetworkImage(
                              'https://picsum.photos/130/100?random=$index',
                            ),
                          
                              ),
                        ),
                      ),

                          Text(
                            'Et officia ex aliqua laborum et magna deserunt minim adipisicing velit aliquip eu aute. Et officia ex aliqua laborum et magna deserunt minim adipisicing velit aliquip eu aute.',

                            overflow:TextOverflow.fade,
                            maxLines: 2,
                          
                          
                          )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
