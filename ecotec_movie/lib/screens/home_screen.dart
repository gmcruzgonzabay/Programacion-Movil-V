import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: size.height*0.5,

        child: Swiper(
          itemCount: 10,
          itemHeight: size.height*0.7,
          itemWidth: size.width*0.7,
          layout: SwiperLayout.STACK,

          itemBuilder: (_, index) {
            return FadeInImage(
              placeholder: NetworkImage('https://picsum.photos/300/400'),
              image: NetworkImage('https://picsum.photos/300/400'),
            );
          },
        ),
      ),
    );
  }
}
