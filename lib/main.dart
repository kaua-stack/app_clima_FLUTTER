import 'package:atividade_clima/screen/clima_atual.dart';
import 'package:atividade_clima/screen/detalhes_avancado.dart';
import 'package:atividade_clima/screen/previsao_semana.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClimaApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClimaApp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ClimaAtual(),
                ),
              ),
              child: const Text("Clima atual"),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const PrevisaoSemana(),
                ),
              ),
              child: const Text("Previsão da semana"),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DetalhesAvancadosScreen(),
                ),
              ),
              child: const Text("Detalhes avançados"),
            ),
          ],
        ),
      ),
    );
  }
}