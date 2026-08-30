import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
   
const ImageScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
      debugPrint("Ancho: ${size.width}");
      debugPrint("Alto: ${size.height}");
      
    return  Scaffold(
      appBar: AppBar(title: Text('Imágenes'), centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(

           children: [
            SizedBox(height: 20,),

            Center(
             child: CircleAvatar(
               radius: 50,
               backgroundImage: AssetImage("assets/rfe.jpeg"),
             ),
           ),
           SizedBox(height: 20,), // Espacio entre el avatar y la siguiente imagen

        
            FadeInImage(placeholder: AssetImage('assets/gifs/jar-loading.gif'),
            
            image: NetworkImage("https://picsum.photos/500/250"),
            //width: double.infinity, //Calcula el ancho de mi pantalla
            width: size.width > 600 ? 500:double.infinity,// Operador ternario:  Si la resolucion es mayor a 600 se fija el ancho en 500 sino todo el ancho de la pantalla
            height: 200,
            fit: BoxFit.cover,

            
            ),
        
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
        
                child: Image.asset('assets/fondo.jpeg', width: 300, fit: BoxFit.cover,)
                
              ),
              SizedBox(height: 30,),
              Container(
                width: 30,
                height: 30,
                color: Colors.amber,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.deepOrange,
                    width: 5,

                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.black26,
                    blurRadius: 10,
                    )
                  ]
                ),
                child: Image.asset('assets/fondo.jpeg')
                ),
        
           ],
        
        ),
      ),
    );
  }
}