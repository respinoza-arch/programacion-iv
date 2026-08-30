import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
   
const DetailScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';
    return  Scaffold(
      //appBar: AppBar(title: Text('Detalle de Película'), elevation: 10,),
      body: CustomScrollView(
        slivers: [
            _customSlider(),
        ],
      )
/*       body: Center(
         child: Text('DetailScreen'),
      ), */
    );
  }
}

class _customSlider extends StatelessWidget {
  const _customSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,

      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('Movie-title'),

        background: FadeInImage(placeholder: AssetImage('assets/loading.gif'), image: NetworkImage('https://picsum.photos/300/300')),


      ),
    );
  }
}