import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/card_swiper_old.dart';
import 'package:peliculas_app/widgets/movie_slider.dart';

class HomeScreen extends StatelessWidget {
   
const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Películas en cine"),centerTitle: true,
      elevation: 10,
      actions: [
        IconButton(onPressed: (){
          debugPrint("Ha presionado el botón");

        }, icon: Icon(Icons.search_outlined))
      ],
      ),
/*       body: Center(
         child: Text('HomeScreen'),
      ), */
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper(),
            MovieSlider()
          ],
        ),
      ),
    );
  }
}