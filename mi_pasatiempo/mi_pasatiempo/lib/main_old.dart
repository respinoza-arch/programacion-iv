import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MiPasatiempoApp());
}

class MiPasatiempoApp extends StatelessWidget {
  const MiPasatiempoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Pasatiempo Favorito',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Colores personalizados: Tonos azul océano y marino (Requisito 2)
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xfff0f4f8),
      ),
      home: const PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  // Variable para manejar la interacción básica (Requisito 3)
  String _mensajeInteractivo = "¡Presiona el botón para descubrir mi lugar favorito!";
  bool _mostrarDetalles = false;

  void _cambiarMensaje() {
    setState(() {
      _mostrarDetalles = !_mostrarDetalles;
      if (_mostrarDetalles) {
        _mensajeInteractivo = "¡Me encanta pescar en ríos y lagos al amanecer! Es el momento ideal por la tranquilidad.";
      } else {
        _mensajeInteractivo = "¡Presiona el botón para descubrir mi lugar favorito!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar obligatorio (Requisito 2)
      appBar: AppBar(
        title: Text(
          'Mi Pasatiempo Favorito',
          style: GoogleFonts.aboreto(fontWeight: FontWeight.bold), // Uso de google_fonts (Requisito 4)
        ),
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Contenedor principal con diseño de Tarjeta (Requisito 2)
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Ícono representativo de pesca (Requisito 2)
                    Icon(
                      Icons.phishing_rounded, // Ícono oficial de Flutter para pesca/anzuelo
                      size: 80,
                      color: Colors.blue.shade700,
                    ),
                    const SizedBox(height: 15),
                    
                    // Textos informativos (Requisito 2)
                    Text(
                      'La Pesca Deportiva',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    
                    Text(
                      'La pesca es mi cable a tierra. Me conecta con la naturaleza, pone a prueba mi paciencia y me regala momentos de desconexión total junto al agua.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Contenedor secundario para la interacción (Requisito 2 y 3)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.withValues(),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.withValues()),
              ),
              child: Text(
                _mensajeInteractivo,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue.shade900,
                ),
              ),
            ),
            const Spacer(),

            // Botón interactivo (Requisito 2 y 3)
            ElevatedButton.icon(
              onPressed: _cambiarMensaje,
              icon: const Icon(Icons.waves),
              label: const Text('Ver más detalles'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade700,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}