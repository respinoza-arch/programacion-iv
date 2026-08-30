import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
   
const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Mi Pasatiempo Favorito'),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
         child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              SizedBox(height: 20),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/avatar.png'),
              ),
              SizedBox(height: 12),
              Text(
                'Richard Espinoza Almeida',
                  style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),


              SizedBox(height: 30),
              // Contenedor Informativo de Pesca
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.phishing_rounded,
                      size: 80,
                      color: Colors.blue.shade700,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'La pesca es mi pasatiempo favorito. Me conecta con la naturaleza, pone a prueba mi paciencia, me desconecta totalmente del día a día.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.4,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),



              SizedBox(height: 40),

              // Contenedor de Botones de Navegación hacia las otras páginas
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    // Botón Elementos (Caña de pescar / anzuelo)
                    _MenuButton(
                      icon: Icons.phishing,
                      label: 'Accesorios de Pesca',
                      onTap: () => Navigator.pushNamed(context, 'elementos'),
                    ),

                    // Botón Nudos
                    _MenuButton(
                      icon: Icons.linear_scale_rounded,
                      label: 'Nudos',
                      onTap: () => Navigator.pushNamed(context, 'nudos'),
                    ),

                    // Botón Lugares
                    _MenuButton(
                      icon: Icons.terrain_rounded,
                      label: 'Lugares',
                      onTap: () => Navigator.pushNamed(context, 'lugares'),
                    ),

                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}



// Clase creada para los botones del menú inferior hacia las otras páginas

class _MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _MenuButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        key: ValueKey(label),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 40, color: Colors.blue.shade700),
            const SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}