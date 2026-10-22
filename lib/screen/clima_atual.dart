import 'package:atividade_clima/widgets/titulo_secao.dart';
import 'package:flutter/material.dart';

class ClimaAtual extends StatelessWidget {
  const ClimaAtual({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clima atual"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          const TituloSecao(
            titulo: "Cidade Atual",
          ),

          Container(
            color: Colors.lightBlue.shade100,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "São Paulo",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Quinta-feira, 15 de outubro",
                  ),
                ],
              ),
            ),
          ),

          const Divider(),

          const TituloSecao(
            titulo: "Temperatura",
          ),

          const Center(
            child: Column(
              children: [
                Text(
                  "26°C",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "Sensação térmica: 28°C",
                ),
              ],
            ),
          ),

          const Divider(),

          const TituloSecao(
            titulo: "Condição do Tempo",
          ),

          Image.network(
            'https://cdn-icons-png.flaticon.com/512/1163/1163661.png',
            height: 200,
          ),

          const Divider(),

          const TituloSecao(
            titulo: "Detalhes",
          ),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.water_drop),
              Icon(Icons.air),
              Icon(Icons.umbrella),
            ],
          ),

          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("65%"),
                Text("12 km/h"),
                Text("30%"),
              ],
            ),
          ),

          const Divider(),

          const TituloSecao(
            titulo: "Atualização",
          ),

          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Atualizar"),
            ),
          ),

          const SizedBox(height: 16),

          Container(
            height: 80,
            color: Colors.grey.shade200,
            child: const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "Última atualização: 14:30",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
