import 'package:flutter/material.dart';
import '../models/lugar_pesca.dart';

class PescaProvider extends ChangeNotifier {
  final List<LugarPesca> _lugares = [
    LugarPesca(
      id: '1',
      nombre: 'Mar',
      descripcion: 'La pesca para grandes variedades de peces, puedes hacer pesca de orilla o en bote mar adentro.',
      icono: Icons.sailing,
    ),
    LugarPesca(
      id: '2',
      nombre: 'Lagos',
      descripcion: 'Aguas frías de alta montaña perfectas para la pesca deportiva y caminatas.',
      icono: Icons.water,
    ),
    LugarPesca(
      id: '3',
      nombre: 'Ríos y arroyos',
      descripcion: 'Pesca de río en corrientes rápidas o tranquilas, capturas de peces de agua dulce o salubre.',
      icono: Icons.terrain,
    ),
  ];

  final List<String> _favoritosIds = [];

  List<LugarPesca> get lugares => _lugares;
  List<String> get favoritosIds => _favoritosIds;

  bool esFavorito(String id) {
    return _favoritosIds.contains(id);
  }

  void toggleFavorito(String id) {
    if (_favoritosIds.contains(id)) {
      _favoritosIds.remove(id);
    } else {
      _favoritosIds.add(id);
    }
    notifyListeners();
  }
}