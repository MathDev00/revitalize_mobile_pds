import 'package:flutter/material.dart';
import 'package:revitalize_mobile/widgets/app_bar.dart';

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
      appBar: const CustomAppBar(title: "Cadastro"),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person, size: 60),
                SizedBox(height: 10),

                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  decoration: const InputDecoration(
                      labelText: 'Nome', border: OutlineInputBorder()),
                ),


                SizedBox(height: 10),

                TextField(
                  obscureText: true,
                  onChanged: (text) {
                    password = text;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Ocupação',
                    border: OutlineInputBorder(),
                  ),
                ),

                 TextField(
                  obscureText: true,
                  onChanged: (text) {
                    password = text;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),

                  SizedBox(height: 10),


                TextField(
                  obscureText: true,
                  onChanged: (text) {
                    password = text;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Gênero',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 10),

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

                SizedBox(height: 10),

                  TextField(
                  obscureText: true,
                  onChanged: (text) {
                    password = text;
                  },
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 10),

                TextField(
                  obscureText: true,
                  onChanged: (text) {
                    password = text;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Endereço',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 10),

                TextField(
                  obscureText: true,
                  onChanged: (text) {
                    password = text;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Cidade',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 10),

                TextField(
                  obscureText: true,
                  onChanged: (text) {
                    password = text;
                  },
                  decoration: const InputDecoration(
                    labelText: 'CEP',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
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
