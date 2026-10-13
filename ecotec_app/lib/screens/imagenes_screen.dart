import 'package:flutter/material.dart';

class ImagenesScreen extends StatelessWidget {
   
const ImagenesScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Widgets de imagenes'),),
      body: Center(
         child: Column(
          children: [

            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    offset: Offset(0, 5)
                  )
                ]
              ),
              child: Image.network('https://picsum.photos/300/200',
               width: 300,
              
               ),
            )
         ,
         SizedBox(height: 40,),


         ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(30),
          child: Image.network('https://picsum.photos/300/200')),
        
        
        
        SizedBox(height: 40,),


        FadeInImage(placeholder: '', image:'https://picsum.photos/300/200' )

         
          ],
         ),
      ),
    );
  }
}