import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {

  final options=const [
' Super Mario','Call of Dufty', 'WoW', 'Zelda'

  ];
   
const ListViewScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('List View'), 
      backgroundColor: Colors.greenAccent,
      elevation: 10,
      
      ),
      body:
      
       ListView.separated(
          itemCount: options.length ,
         separatorBuilder:(_,_) =>Divider(),
        
         itemBuilder:(context, index)=>
        ListTile(
          title: Text(options[index]),
          trailing: Icon(Icons.arrow_forward),
          onTap: (){
            debugPrint('Has presionado el boton');
          },
          
          )
      ),
     
     
     
     

      
      //  ListView(
      //   children: [

      //             // ...options.map((juego) => ListTile(
      //             //   title: Text(juego),
      //             //   trailing: Icon(Icons.arrow_forward_ios_outlined),


   

      //   ],


      // )
    );
  }
}
