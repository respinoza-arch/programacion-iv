import 'package:flutter/material.dart';

class LugaresScreen extends StatelessWidget {
   
const LugaresScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                children: const [

                  Card(
                    elevation: 4,
                    child: ListTile(
                      leading: Icon(Icons.sailing, color: Colors.indigo, size: 35),
                      title: Text('Mar', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('La pesca para grandes variedades de peces, puedes hacer pesca de orilla o en bote mar adentro'),
                    ),
                  ),
                  Divider(height: 25, thickness: 1.5),
                  
                  Card(
                    elevation: 4,
                    child: ListTile(
                      leading: Icon(Icons.water, color: Colors.indigo, size: 35),
                      title: Text('Lagos', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Aguas frías de alta montaña perfectas para la pesca deportiva y caminatas.'),
                    ),
                  ),
                  Divider(height: 25, thickness: 1.5),
                  
                  Card(
                    elevation: 4,
                    child: ListTile(
                      leading: Icon(Icons.terrain, color: Colors.indigo, size: 35),
                      title: Text('Ríos y arroyos', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Pesca de río en corrientes rápidas o tranquilas, capturas de peces de agua dulce o salubre'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushReplacementNamed(context, 'home'),
              icon: const Icon(Icons.home),
              label: const Text('Volver al Inicio'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo.shade700,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}