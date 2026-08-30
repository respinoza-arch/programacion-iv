import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      //color: Colors.blue,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 15),
            child: Text("Populares", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
  SizedBox(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 2,
    itemBuilder: (_, int index) {
      return MoviePoster(index: index,);
/*       return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

        width: 130,
        height: 190,
        color: Colors.green,
      ); */
    }),
  )
        ],
      ),

    );
  }
}

class MoviePoster extends StatelessWidget {
  final int index;

  const MoviePoster({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

        width: 130,
        height: 190,
        //color: Colors.green,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'detail', arguments: 'movie-instance'),
              ),
              FadeInImage(
              width: 130,
              height: 130,
              placeholder: AssetImage('assets/no-image.jpg'),
              fit: BoxFit.cover, 
              image: NetworkImage('https://picsum.photos/130/100?random=$index')
              ),
              Text('Enim cupidatat ea eiusmod non exercitation commodo veniam excepteur.', overflow: TextOverflow.ellipsis, maxLines: 2,),
            ],
          ),
        )
      );
}
}