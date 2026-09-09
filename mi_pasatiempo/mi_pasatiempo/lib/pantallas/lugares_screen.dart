import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/provider.dart';
import '../widgets/tarjeta_lugar_pesca.dart';
import '../widgets/boton_personalizado.dart';

class LugaresScreen extends StatelessWidget {
  const LugaresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pescaProvider = Provider.of<PescaProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lugares para Pescar'),
        backgroundColor: Colors.indigo.shade700,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'assets/lugares.png',
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Divider(height: 25, thickness: 1),
                  ...pescaProvider.lugares.map((lugar) => TarjetaLugarPesca(lugar: lugar)),
                ],
              ),
            ),
            const SizedBox(height: 15),
            BotonPersonalizado(
              texto: 'Volver al Inicio',
              icono: Icons.home,
              color: Colors.indigo.shade700,
              onPressed: () => Navigator.pushReplacementNamed(context, 'home'),
            ),
          ],
        ),
      ),
    );
  }
}