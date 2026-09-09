import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/favorites_provider.dart';
import '../widgets/spot_card.dart';
import 'details_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lugares Favoritos'),
      ),
      body: Consumer<FavoritesProvider>(
        builder: (context, favProvider, child) {
          final favorites = favProvider.favorites;

          if (favorites.isEmpty) {
            return const Center(
              child: Text(
                'No tienes puntos de pesca favoritos aún.',
                style: TextStyle(fontSize: 16),
              ),
            );
          }

          return ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              final spot = favorites[index];
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
          );
        },
      ),
    );
  }
}