import 'pantallas/list_view.dart';
import 'package:flutter/material.dart';
import 'package:componente_profe/pantallas/card_screen.dart';
import 'package:componente_profe/pantallas/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quita la marca DEBUG en el emulador
      title: 'App componentes', // Este título es interno y no se refleja en el aplicativo
      //theme: ThemeData.dark(),
      theme: ThemeData.light().copyWith( // Es un tema que aplicaremos a todas las páginas del app
        primaryColor: Colors.lightGreenAccent,
        appBarTheme: AppBarTheme(backgroundColor: Colors.blue, // Para que coja este color comento el backgroundcolor en list_view,dart
        foregroundColor: Colors.white,
        elevation: 8,
      )
      ),
/*       theme: ThemeData(
        primarySwatch: Colors.blue,
      ), */
      initialRoute: 'cardscreen',
      //home: ListViewScreen(),
      routes: {
        '/':(context) => HomeScreen(),
        'listviewscreen':(context) => ListViewScreen(),
        'cardscreen':(context) => CardScreen(),
      },
    );
  }
}