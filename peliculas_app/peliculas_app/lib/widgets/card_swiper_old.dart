import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    //debugPrint("Total ${size}");
    debugPrint("Alto ${size.height * 0.3}");

    return SizedBox(
      width: double.infinity,
      height: 400,
      //color: Colors.amber,

      child: Swiper(itemCount: 10,
      layout: SwiperLayout.STACK,

      itemHeight: size.height * 0.3,
      itemWidth: size.width * 0.9,
      itemBuilder: (_, int index) {
        return GestureDetector(
          onTap:() => Navigator.pushNamed(context, 'detail', arguments: 'movie-instance'),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(40),
            child: FadeInImage(placeholder: AssetImage('assets/no-image.jpg'), 
            image: NetworkImage('https://picsum.photos/300/300')),
          ),
        );
      },
      
      ),
      
    );
  }
}