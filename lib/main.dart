import 'package:atividade_clima/widgets/titulo_secao.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ATIVIDADE APP CLIMA TEMPO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            " APP CLIMA TEMPO",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
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
                color: Colors.grey,
              ),
            ),

            const Divider(),

            
            // TEMPERATURA
            
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

           
            // CONDIÇÃO DO TEMPO
            
            const TituloSecao(
              titulo: "Condição do Tempo",
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/1163/1163661.png',
                height: 200,
              ),
            ),

            const SizedBox(height: 10),

            const Center(
              child: Text(
                "Ensolarado",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const Divider(),

           
            // DETALHES DO CLIMA
            
            const TituloSecao(
              titulo: "Detalhes",
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.blue.shade50,
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Icon(
                            Icons.water_drop,
                            color: Colors.blue,
                            size: 40,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Umidade",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("65%"),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Card(
                    color: Colors.green.shade50,
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Icon(
                            Icons.air,
                            color: Colors.green,
                            size: 40,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Vento",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("12 km/h"),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Card(
                    color: Colors.purple.shade50,
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Icon(
                            Icons.umbrella,
                            color: Colors.purple,
                            size: 40,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Chuva",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("30%"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const Divider(),

         
            const TituloSecao(
              titulo: "Atualização",
            ),

            ElevatedButton.icon(
              onPressed: () {
                print("Atualizando clima...");
              },
              icon: const Icon(Icons.refresh),
              label: const Text("Atualizar"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}