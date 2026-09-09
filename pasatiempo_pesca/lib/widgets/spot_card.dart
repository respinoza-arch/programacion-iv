import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/fishing_spot.dart';
import '../providers/favorites_provider.dart';

class SpotCard extends StatelessWidget {
  final FishingSpot spot;
  final VoidCallback onTap;

  const SpotCard({
    super.key,
    required this.spot,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              spot.imageUrl,
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (ctx, err, stack) => Container(
                height: 160,
                color: Colors.blueGrey.shade100,
                child: const Icon(Icons.phishing, size: 50, color: Colors.blueGrey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          spot.name,
                          style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(Icons.location_on, size: 16, color: Colors.teal),
                            const SizedBox(width: 4),
                            Text(spot.location, style: theme.textTheme.bodyMedium),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Consumer<FavoritesProvider>(
                    builder: (context, favProvider, child) {
                      final isFav = favProvider.isFavorite(spot);
                      return IconButton(
                        icon: Icon(
                          isFav ? Icons.favorite : Icons.favorite_border,
                          color: isFav ? Colors.red : Colors.grey,
                        ),
                        onPressed: () => favProvider.toggleFavorite(spot),
                      );
                    },
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