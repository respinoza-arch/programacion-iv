import 'package:flutter/material.dart';
import '../models/fishing_spot.dart';
import '../widgets/spot_card.dart';
import 'details_screen.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<FishingSpot> sampleSpots = [
    FishingSpot(
      id: '1',
      name: 'Lago Azul',
      location: 'Valle Central',
      description: 'Excelente lugar para pesca de trucha en agua dulce. Tranquilo y rodeado de naturaleza.',
      imageUrl: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
      recommendedBait: 'Cucharilla / Moscas',
    ),
    FishingSpot(
      id: '2',
      name: 'Muelle del Sol',
      location: 'Costa Dorada',
      description: 'Pesca en mar abierto ideal para captura de róbalo. Recomendado ir al amanecer.',
      imageUrl: 'https://images.unsplash.com/photo-1544551763-46a013bb70d5',
      recommendedBait: 'Camarón vivo',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rutas & Puntos de Pesca'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            tooltip: 'Mis Favoritos',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FavoritesScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: sampleSpots.length,
        itemBuilder: (context, index) {
          final spot = sampleSpots[index];
          return SpotCard(
            spot: spot,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(spot: spot),
                ),
              );
            },
          );
        },
      ),
    );
  }
}