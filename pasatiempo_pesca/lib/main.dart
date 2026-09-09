import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/favorites_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoritesProvider(),
      child: FishingApp(),
    ),
  );
}

class FishingApp extends StatelessWidget {
  const FishingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Pesca',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF005F73), // Azul Océano
          primary: const Color(0xFF005F73),
          secondary: const Color(0xFF0A9396),
          surface: const Color(0xFFF8F9FA),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF005F73),
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 2,
        ),
        // ignore: deprecated_member_use
        scaffoldBackgroundColor: const Color(0xFFE9D8A6).withOpacity(0.15), // Tono arena claro
      ),
      home: HomeScreen(),
    );
  }
}