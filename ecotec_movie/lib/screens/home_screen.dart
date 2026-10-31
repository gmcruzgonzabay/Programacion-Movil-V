import 'package:flutter/material.dart';

import 'card_swiper.dart';

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
              CardSwiper(size: size),
                CardSwiper(size: size),
          ],
        ),
      ),
    );
  }
}
