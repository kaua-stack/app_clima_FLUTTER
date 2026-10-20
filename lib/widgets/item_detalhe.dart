import 'package:flutter/material.dart';

class TituloSecao extends StatelessWidget {
  // Texto que será exibido no título
  final String titulo;

  const TituloSecao({
    super.key,
    required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        titulo,
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
          letterSpacing: 1.2, // Espaçamento entre letras
        ),
      ),
    );
  }
}