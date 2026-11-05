import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //todo el ancho de la pantalla
      height: 500,
      color: Colors.amber,
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
              itemCount: 20,

              itemBuilder: (_, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: 130,
                  height: 190,
                  color: Colors.green,
                  child: Column(
                    children: [
                      FadeInImage(
                        placeholder: AssetImage('assets/no-image.jpeg'),
                        image: NetworkImage(
                          'https://picsum.photos/130/100?random=$index',
                        ),
                      ),
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
