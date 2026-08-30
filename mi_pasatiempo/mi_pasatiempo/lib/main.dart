import 'package:flutter/material.dart';
import 'package:mi_pasatiempo/pantallas/elementos_screen.dart';
import 'package:mi_pasatiempo/pantallas/home_screen.dart';
import 'package:mi_pasatiempo/pantallas/lugares_screen.dart';
import 'package:mi_pasatiempo/pantallas/nudos_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi pasatiempo Favorito',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes:{
        'home': (_) => HomeScreen(),
        'elementos': (_) => ElementosScreen(),
        'lugares': (_) => LugaresScreen(),
        'nudos':(_) => NudosScreen()
      }
    );
  }
}