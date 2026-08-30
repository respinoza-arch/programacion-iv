import 'package:flutter/material.dart';
import 'package:peliculas_app/pantallas/detail_screen.dart';
import 'package:peliculas_app/pantallas/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de películas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomeScreen(),
      initialRoute: 'home',
      routes: {
        'home':(_) => HomeScreen(),
        'detail':(_) => DetailScreen(),
      },
    );
  }
}