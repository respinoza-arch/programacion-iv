import 'package:flutter/material.dart';

class BotonPersonalizado extends StatelessWidget {
  final String texto;
  final IconData icono;
  final VoidCallback onPressed;
  final Color? color;

  const BotonPersonalizado({
    super.key,
    required this.texto,
    required this.icono,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icono),
      label: Text(texto),
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}