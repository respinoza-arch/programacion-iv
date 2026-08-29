//import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Cards'), centerTitle: true,),
      body: ListView(

        padding: EdgeInsets.all(20),

         children: [
         // SizedBox(height: 100,),
          
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(30)),
            clipBehavior: Clip.antiAlias, // Sirve para que el texto no se sobrepase de los bordes
            margin: EdgeInsets.all(10),
            color: Colors.blue.shade100,
            elevation: 10,
            shadowColor: Colors.blueGrey,
            child: Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Column(
              
                children: [
                  ListTile(
                    title: Text("Soy un título"),
                    leading: Icon(Icons.add_task_rounded, color: Colors.purple,),
                    subtitle: Text('Aliquip magna ipsum veniam elit quis. Anim do consectetur occaecat consectetur proident. Aliquip ea aliqua ex id commodo aute veniam nisi excepteur esse dolor pariatur occaecat laborum. Consectetur elit proident deserunt nulla anim consequat. Adipisicing aliqua et ex ad consectetur incididunt voluptate.'),
                  ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text('Aceptar')),
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){}, child: Text('Cancelar')),
                  ],
                )
                  
                ],
              
              ),
            ),
          ),
            SizedBox(height: 20,),
            Card(
            child: Column(

              children: [
                ListTile(
                  title: Text("Soy un título"),
                  leading: Icon(Icons.add_task_rounded, color: Colors.purple,),
                  subtitle: Text('Aliquip magna ipsum veniam elit quis. Anim do consectetur occaecat consectetur proident. Aliquip ea aliqua ex id commodo aute veniam nisi excepteur esse dolor pariatur occaecat laborum. Consectetur elit proident deserunt nulla anim consequat. Adipisicing aliqua et ex ad consectetur incididunt voluptate.'),
                ),
                Image.network("https://picsum.photos/500/250", width: double.infinity,height: 200,fit: BoxFit.cover,)
              ],

            ),
          ),
            
            SizedBox(height: 20,),
            Card(
            child: Column(

              children: [
                ListTile(
                  title: Text("Soy un título"),
                  leading: Icon(Icons.add_task_rounded, color: Colors.purple,),
                  subtitle: Text('Aliquip magna ipsum veniam elit quis. Anim do consectetur occaecat consectetur proident. Aliquip ea aliqua ex id commodo aute veniam nisi excepteur esse dolor pariatur occaecat laborum. Consectetur elit proident deserunt nulla anim consequat. Adipisicing aliqua et ex ad consectetur incididunt voluptate.'),
                )
              ],

            ),
          )


         ],
         )
      );
  }
}