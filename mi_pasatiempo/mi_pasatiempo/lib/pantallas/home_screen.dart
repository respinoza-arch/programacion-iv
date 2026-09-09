import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/provider.dart';
import '../widgets/boton_personalizado.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Pasatiempo: La Pesca'),
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
        actions: [
          Consumer<PescaProvider>(
            builder: (context, provider, child) {
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  children: [
                    const Icon(Icons.favorite, color: Colors.redAccent),
                    const SizedBox(width: 4),
                    Text(
                      '${provider.favoritosIds.length}',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Image.asset('assets/lugares.png', fit: BoxFit.cover),
            ),
            const SizedBox(height: 20),
            BotonPersonalizado(
              texto: 'Ver Elementos de Pesca',
              icono: Icons.phishing,
              onPressed: () => Navigator.pushNamed(context, 'elementos'),
            ),
            const SizedBox(height: 10),
            BotonPersonalizado(
              texto: 'Ver Lugares para Pescar',
              icono: Icons.map,
              color: Colors.indigo.shade700,
              onPressed: () => Navigator.pushNamed(context, 'lugares'),
            ),
            const SizedBox(height: 10),
            BotonPersonalizado(
              texto: 'Ver Nudos Esenciales',
              icono: Icons.gesture,
              color: Colors.teal.shade700,
              onPressed: () => Navigator.pushNamed(context, 'nudos'),
            ),
          ],
        ),
      ),
    );
  }
}