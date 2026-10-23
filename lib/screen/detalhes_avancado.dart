import 'package:atividade_clima/widgets/titulo_secao.dart';
import 'package:flutter/material.dart';
class DetalhesAvancadosScreen extends StatelessWidget {
  const DetalhesAvancadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes avançados'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // ALERTAS
          const TituloSecao(titulo: 'Alertas'),

          Card(
            child: ListTile(
              leading: const Icon(Icons.warning, color: Colors.orange),
              title: const Text('Chuva forte'),
              subtitle: const Text(
                'Previsto para hoje a partir das 18h',
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.cloud, color: Colors.blue),
              title: const Text('Frente fria'),
              subtitle: const Text(
                'Temperaturas em queda',
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),

          const Divider(),

          // INDICADORES
          const TituloSecao(titulo: 'Indicadores'),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [

              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_sunny),
                    Text('6'),
                    Text('Índice UV'),
                  ],
                ),
              ),

              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.speed),
                    Text('1013 hPa'),
                    Text('Pressão'),
                  ],
                ),
              ),

              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.visibility),
                    Text('10 km'),
                    Text('Visibilidade'),
                  ],
                ),
              ),

              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_twilight),
                    Text('06:15'),
                    Text('Nascer do Sol'),
                  ],
                ),
              ),
            ],
          ),

          const Divider(),

          // CONDIÇÃO DO TEMPO
          const TituloSecao(titulo: 'Condição do tempo'),

          Stack(
            children: [

              Image.network(
                'https://images.unsplash.com/photo-1501973801540-537f08ccae7b',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              const Positioned(
                left: 16,
                bottom: 16,
                child: Text(
                  '26°C',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              const Positioned(
                top: 16,
                right: 16,
                child: Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ],
          ),

          const Divider(),

          // TAGS
          const TituloSecao(titulo: 'Tags'),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: const [

              Chip(
                avatar: Icon(Icons.warning, size: 18),
                label: Text('Chuva forte'),
              ),

              Chip(
                avatar: Icon(Icons.sunny, size: 18),
                label: Text('UV alto'),
              ),

              Chip(
                label: Text('Vento moderado'),
              ),

              Chip(
                label: Text('Umidade alta'),
              ),

              Chip(
                label: Text('Frente fria'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}