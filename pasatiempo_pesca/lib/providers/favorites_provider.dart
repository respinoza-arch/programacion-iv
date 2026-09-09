import 'package:flutter/material.dart';
import '../models/fishing_spot.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<FishingSpot> _favorites = [];

  List<FishingSpot> get favorites => List.unmodifiable(_favorites);

  bool isFavorite(FishingSpot spot) {
    return _favorites.any((element) => element.id == spot.id);
  }

  void toggleFavorite(FishingSpot spot) {
    if (isFavorite(spot)) {
      _favorites.removeWhere((element) => element.id == spot.id);
    } else {
      _favorites.add(spot);
    }
    // Notifica a los widgets (Consumer) para reconstruirse automáticamente
    notifyListeners();
  }
}