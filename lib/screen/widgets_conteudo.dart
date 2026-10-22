import 'package:atividade_clima/widgets/titulo_secao.dart';
import 'package:flutter/material.dart';

class WidgetsConteudo extends StatelessWidget {
  const WidgetsConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP CLIMA TEMPO"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TituloSecao(
            titulo: "Cidade Atual",
          ),

          const Text(
            "São Paulo",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Text(
            "Quinta-feira, 15 de outubro",
            style: TextStyle(
              fontSize: 16,
            ),
          ),

          const Divider(),

          const TituloSecao(
            titulo: "Temperatura",
          ),

          const Text(
            "26°C",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),

          const Text(
            "Sensação térmica: 28°C",
            style: TextStyle(
              fontSize: 16,
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

          const Text(
            "Ensolarado",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),

          const Divider(),

          const TituloSecao(
            titulo: "Detalhes",
          ),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.water_drop,
                color: Colors.blue,
                size: 32,
              ),
              Icon(
                Icons.air,
                color: Colors.green,
                size: 32,
              ),
              Icon(
                Icons.umbrella,
                color: Colors.purple,
                size: 32,
              ),
            ],
          ),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("65%"),
              Text("12 km/h"),
              Text("30%"),
            ],
          ),

          const Divider(),

          const TituloSecao(
            titulo: "Atualização",
          ),

          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Atualizar",
            ),
          ),
        ],
      ),
    );
  }
}