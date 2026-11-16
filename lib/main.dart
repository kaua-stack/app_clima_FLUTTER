import 'package:atividade_clima/screen/clima_atual.dart';
import 'package:atividade_clima/screen/detalhes_avancado.dart';
import 'package:atividade_clima/screen/previsao_semana.dart';
import 'package:atividade_clima/screen/formulario.dart';
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
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CatalogoItem> opcoes = [
      CatalogoItem(
        titulo: "Clima Atual",
        descricao: "Veja a temperatura atual da cidade.",
        icone: Icons.wb_sunny,
        destino: const ClimaAtual(),
      ),
      CatalogoItem(
        titulo: "Previsão da Semana",
        descricao: "Confira a previsão dos próximos dias.",
        icone: Icons.calendar_month,
        destino: const PrevisaoSemana(),
      ),
      CatalogoItem(
        titulo: "Detalhes Avançados",
        descricao: "Informações detalhadas do clima.",
        icone: Icons.cloud,
        destino: const DetalhesAvancadosScreen(),
      ),
      CatalogoItem(
        titulo: "Formulário",
        descricao: "Cadastro de usuário.",
        icone: Icons.assignment,
        destino: const Formulario(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("ClimaApp"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.9,
        children: opcoes.map((item) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => item.destino,
                ),
              );
            },
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item.icone,
                      size: 50,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item.titulo,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item.descricao,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class CatalogoItem {
  final String titulo;
  final String descricao;
  final IconData icone;
  final Widget destino;

  CatalogoItem({
    required this.titulo,
    required this.descricao,
    required this.icone,
    required this.destino,
  });
}