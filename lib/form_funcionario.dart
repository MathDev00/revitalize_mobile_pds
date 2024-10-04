import 'package:flutter/material.dart';
import 'package:revitalize_mobile/tela_inicial.dart';
import 'package:revitalize_mobile/app_bar.dart';

//import 'package:flutter/revitalize_mobile/tela_inicial.dart';

class FormFuncionarioPage extends StatefulWidget {
  const FormFuncionarioPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  __FormFuncionarioPageState createState() => __FormFuncionarioPageState();
}

class __FormFuncionarioPageState extends State<FormFuncionarioPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Cadastro de Funcionário"),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  decoration: const InputDecoration(
                      labelText: 'Nome', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  onChanged: (text) {
                    password = text;
                  },
                  decoration: const InputDecoration(
                    labelText: 'CPF',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Cadastrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
