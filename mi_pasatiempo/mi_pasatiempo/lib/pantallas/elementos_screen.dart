import 'package:flutter/material.dart';

class ElementosScreen extends StatelessWidget {
   
const ElementosScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Elementos de Pesca'),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
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
                      'assets/accesorios.jpeg',
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover, 
                    ),
                  ),
                  const Divider(height: 25, thickness: 1),

                  Card(
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(Icons.phishing, color: Colors.blue, size: 35),
                      title: Text('Caña de Pescar', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('De fibra de carbono, flexible y ligera para lanzar a gran distancia.'),
                    ),
                  ),
                  Divider(height: 20, thickness: 1),

                  Card(
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(Icons.blur_circular, color: Colors.blue, size: 35),
                      title: Text('Carrete (Reel)', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Sistema de bobinado rápido con freno ajustable para presas grandes.'),
                    ),
                  ),
                  Divider(height: 20, thickness: 1),

                  Card(
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(Icons.waves, color: Colors.blue, size: 35),
                      title: Text('Línea de Monofilamento', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Hilo invisible de alta resistencia a la tensión y la abrasión.'),
                    ),
                  ),
                  Divider(height: 20, thickness: 1),

                  Card(
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(Icons.brightness_5, color: Colors.blue, size: 35),
                      title: Text('Anzuelos y Señuelos', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Variedad de tamaños y cebos artificiales para atraer distintas especies.'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushReplacementNamed(context, 'home'),
              icon: Icon(Icons.home),
              label: Text('Volver al Inicio'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade700,
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
        child: Icon(Icons.lightbulb_outline),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Row(
                  children: [
                    Icon(Icons.gavel, color: Colors.blue),
                    SizedBox(width: 10),
                    Text('Mantenimiento'),
                  ],
                ),
                content: Text(
                  'Recuerda enjuagar tu carrete y caña con agua dulce después de cada jornada, especialmente si pescas en entornos salinos, para evitar la corrosión.',
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Entendido', style: TextStyle(color: Colors.blue)),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}