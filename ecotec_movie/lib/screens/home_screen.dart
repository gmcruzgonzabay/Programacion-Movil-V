import 'package:ecotec_movie/screens/widgets/movie_slider.dart';
import 'package:flutter/material.dart';

import 'widgets/card_swiper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            CardSwiper(size: size),
           SizedBox(height: 80,),

           MovieSlider(),
          

            
                
          ],
        ),
      ),
    );
  }
}
