import 'package:atividade_clima/widgets/titulo_secao.dart';
import 'package:flutter/material.dart';

class PrevisaoSemana extends StatelessWidget {
  const PrevisaoSemana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Previsão da semana"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          const TituloSecao(
            titulo: "Faixa de temperatura",
          ),

          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.blue,
                  child: const Center(
                    child: Text("18°C"),
                  ),
                ),
              ),

              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.orange,
                  child: const Center(
                    child: Text("26°C"),
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.red,
                  child: const Center(
                    child: Text("31°C"),
                  ),
                ),
              ),
            ],
          ),

          const Divider(),

          const TituloSecao(
            titulo: "Resumo do dia",
          ),

          Container(
            height: 200,
            color: Colors.grey.shade300,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    child: const Center(
                      child: Text("Manhã: 20°C"),
                    ),
                  ),
                ),

                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.orange,
                    child: const Center(
                      child: Text("Tarde: 29°C"),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Divider(),

          const TituloSecao(
            titulo: "Próximos dias",
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text("Sexta")),
                Icon(Icons.wb_sunny, size: 28),
                Expanded(child: Text("18°C")),
                Expanded(child: Text("30°C")),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text("Sábado")),
                Icon(Icons.cloud, size: 28),
                Expanded(child: Text("19°C")),
                Expanded(child: Text("27°C")),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text("Domingo")),
                Icon(Icons.umbrella, size: 28),
                Expanded(child: Text("17°C")),
                Expanded(child: Text("25°C")),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text("Segunda")),
                Icon(Icons.wb_sunny, size: 28),
                Expanded(child: Text("20°C")),
                Expanded(child: Text("31°C")),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text("Terça")),
                Icon(Icons.cloud, size: 28),
                Expanded(child: Text("19°C")),
                Expanded(child: Text("28°C")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}