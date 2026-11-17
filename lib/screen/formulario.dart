import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  bool entrar = true;
  bool ocultarSenha = true;
  bool ocultarConfirmarSenha = true;

  InputDecoration getInputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulários'),
      ),
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
                      decoration: getInputDecoration('Nome'),
                    ),
                  ),

                  if (!entrar) const SizedBox(height: 16),

                  TextFormField(
                    decoration: getInputDecoration('E-Mail'),
                  ),

                  const SizedBox(height: 16),

                  // CAMPO SENHA
                  TextFormField(
                    decoration: getInputDecoration('Senha').copyWith(
                      suffixIcon: IconButton(
                        icon: Icon(
                          ocultarSenha
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            ocultarSenha = !ocultarSenha;
                          });
                        },
                      ),
                    ),
                    obscureText: ocultarSenha,
                  ),

                  Visibility(
                    visible: !entrar,
                    child: Column(
                      children: [
                        const SizedBox(height: 16),

                        // CAMPO CONFIRMAR SENHA
                        TextFormField(
                          decoration:
                              getInputDecoration(
                                'Confirmar Senha',
                              ).copyWith(
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    ocultarConfirmarSenha
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      ocultarConfirmarSenha =
                                          !ocultarConfirmarSenha;
                                    });
                                  },
                                ),
                              ),
                          obscureText: ocultarConfirmarSenha,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      entrar ? 'Entrar' : 'Cadastrar',
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      setState(() {
                        entrar = !entrar;
                      });
                    },
                    child: Text(
                      entrar
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