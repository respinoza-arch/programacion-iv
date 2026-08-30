import 'package:flutter/material.dart';

class NudosScreen extends StatelessWidget {
   
const NudosScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Nudos Esenciales'),
        backgroundColor: Colors.teal.shade700,
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
                      'assets/nudos.jpeg',
                      height: 180, 
                      width: double.infinity,
                      fit: BoxFit.cover, 
                    ),
                  ),
                  const Divider(height: 25, thickness: 1),

                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.lightbulb_outlined, color: Colors.teal, size: 35),
                      title: Text('Nudos de Pesca', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Existen muchos nudos que los pescadores usan para asegurar el anzuelo u otros elementos como saca vueltas. Personalmente me gusta usar el nudo de Palomar que es muy fuerte y rápido de hacer.'),
                    ),
                  ),
                  Divider(height: 15),

                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.linear_scale, color: Colors.teal, size: 35),
                      title: Text('Nudo Clinch (Fácil)', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('El nudo más usado para atar el anzuelo a la línea principal de forma rápida.'),
                    ),
                  ),
                  Divider(height: 15),

                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.loop, color: Colors.teal, size: 35),
                      title: Text('Nudo Palomar (Muy Fuerte)', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Excelente para líneas trenzadas. Evita que el lazo se deslice bajo presión.'),
                    ),
                  ),
                  Divider(height: 15),

                  Card(
                  
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.link, color: Colors.teal, size: 35),
                      title: Text('Nudo de Sangre (Unión)', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Ideal para unir dos secciones de hilo de diámetros similares con total seguridad.'),
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
                backgroundColor: Colors.teal.shade700,
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}