import 'package:flutter/material.dart';
 
class Formulario extends StatefulWidget {
  const new({super.key});
 
  @override
  State<Formulario> createState() => _FormularioState();
}
 
class _FormularioState extends State<Formulario> {
  bool entrar = true;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulários')),
      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Visibility(
                    visible: !entrar,
                    child: TextFormField(
                      decoration: InputDecoration(label: Text("nome")),
                    ),
                  ),
 
                  TextFormField(
                    decoration: InputDecoration(label: Text('E-Mail')),
                  ),
                  TextFormField(
                    decoration: InputDecoration(label: Text('Senha')),
                    obscureText: true,
                  ),
                  Visibility(
                    visible: !entrar,
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text('confirmar senha'),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text((entrar) ? 'Entrar' : 'Cadastrar'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        entrar = !entrar;
                      });
                    },
                    child: Text(
                      (entrar)
                          ? 'Ainda não tem uma conta? Realizar o cadastro.'
                          : 'Já possui uma conta? Entre.',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
 