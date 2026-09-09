import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/lugar_pesca.dart';
import '../providers/provider.dart';

class TarjetaLugarPesca extends StatelessWidget {
  final LugarPesca lugar;

  const TarjetaLugarPesca({super.key, required this.lugar});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(lugar.icono, color: Colors.indigo, size: 35),
        title: Text(
          lugar.nombre,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(lugar.descripcion),
        trailing: Consumer<PescaProvider>(
          builder: (context, provider, child) {
            final esFav = provider.esFavorito(lugar.id);
            return IconButton(
              icon: Icon(
                esFav ? Icons.favorite : Icons.favorite_border,
                color: esFav ? Colors.red : Colors.grey,
              ),
              onPressed: () => provider.toggleFavorito(lugar.id),
            );
          },
        ),
      ),
    );
  }
}