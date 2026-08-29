import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {

  final options = const [
    'Super Mario Bros',
    'Starcraft',
    'Sniper Elite',
    'Street Fighter'
  ];
   
const ListViewScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('List View'), 
      //backgroundColor: Colors.blueGrey,
      elevation: 10,
      ),
      // body: Center(
      //    child: Text('ListViewScreen'),
      // ),
      body: 
      //ListView(
        //children: [
          // ...options.map((juego) => ListTile(
          //   title: Text(juego),
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   ),)

            ListView.separated(
              itemBuilder: (context, index) => 
              ListTile(
                title: Text(options[index]),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){
                  // ignore: avoid_print
                  debugPrint('Has presionado el botón');
                },
                ), 
              separatorBuilder: (_,_) => Divider(), 
              itemCount: options.length
            ),


/*           ListTile(
            title: Text("Hola Mundo 1"),
            leading: CircleAvatar(backgroundColor: Colors.blue,),
          ),          
          ListTile(
            title: Text("Hola Mundo 2"),
            leading: Icon(Icons.access_alarms),
          ),          
          ListTile(
            title: Text("Hola Mundo 3"),
            leading: Icon(Icons.add_alert),
          ),          
          ListTile(
            title: Text("Hola Mundo 4"),
            leading: Icon(Icons.airplay),
          ) */
        //],
      );
    
  }
}