import 'package:flutter/material.dart';
import 'package:revitalize_mobile/app_bar.dart';
import 'package:revitalize_mobile/form_funcionario.dart';

import 'package:revitalize_mobile/widgets/custom_table.dart';

/// Flutter code sample for [Table].

void main() => runApp(const FuncionarioPage());

class FuncionarioPage extends StatelessWidget {
  const FuncionarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(title: "Funcionarios"),
        body: const FuncionarioPageState(),
      ),
    );
  }
}

class FuncionarioPageState extends StatelessWidget {
  const FuncionarioPageState({super.key});

  @override
  Widget build(BuildContext context) {
    double availableHeight = MediaQuery.of(context).size.height;
    double availableWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
         IconButton(
              onPressed: () {
                 Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const FormFuncionarioPage()));
              },
              icon: const Icon(Icons.add),
              tooltip: 'Adicionar', 
            ),
        SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                width: availableWidth * 0.9,
                height: availableHeight * 0.2,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(150, 173, 216, 230),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(150, 173, 216, 230),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Column(children: [
                            Text(
                              "Funcionario",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            Text("Dr. Marcos",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Ocupação",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                      Text("Psicologo",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ]),
                          const Column(
                            children: [
                              Text(
                                "Gênero",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text("Masculino",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Padding(
                            //mainAxisAlignment: MainAxisAlignment.
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(children: [
                                  IconButton(
                                    onPressed: () {
                                                },
                                    icon: const Icon(Icons.edit),
                                    tooltip: 'Editar', 
            ), 
                                  IconButton(
                                    onPressed: () {
                                                },
                                    icon: const Icon(Icons.delete),
                                    tooltip: 'Editar',
            ),                                             ]),
                          )
                        ]),
                  ],
                ))
          ],
        )
      ],
    );
  }
}
