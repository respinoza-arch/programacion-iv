import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/fishing_spot.dart';
import '../providers/favorites_provider.dart';
import '../widgets/custom_button.dart';

class DetailsScreen extends StatelessWidget {
  final FishingSpot spot;

  const DetailsScreen({super.key, required this.spot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(spot.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              spot.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        spot.name,
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Consumer<FavoritesProvider>(
                        builder: (context, favProvider, child) {
                          final isFav = favProvider.isFavorite(spot);
                          return IconButton(
                            icon: Icon(
                              isFav ? Icons.favorite : Icons.favorite_border,
                              color: isFav ? Colors.red : Colors.grey,
                              size: 30,
                            ),
                            onPressed: () => favProvider.toggleFavorite(spot),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Chip(
                    avatar: const Icon(Icons.phishing, color: Colors.white),
                    label: Text('Carnada: ${spot.recommendedBait}'),
                    backgroundColor: Colors.teal.shade700,
                    labelStyle: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Descripción',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    spot.description,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: CustomButton(
                      label: 'Volver a la Lista',
                      icon: Icons.arrow_back,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}