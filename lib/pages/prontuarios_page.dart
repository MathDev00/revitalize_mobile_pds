// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:revitalize_mobile/pages/form_prontuario.dart';
import 'package:revitalize_mobile/pages/prontuario_detalhado.dart';
import 'package:revitalize_mobile/widgets/app_bar.dart';
import 'package:revitalize_mobile/widgets/custom_table.dart';

/// Flutter code sample for [Table].

void main() => runApp(const ProntuariosPage());

class ProntuariosPage extends StatelessWidget {
  const ProntuariosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(title: "Prontuários"),
        body: const ProntuariosPageState(),
      ),
    );
  }
}

class ProntuariosPageState extends StatelessWidget {
  const ProntuariosPageState({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> nomeCampo = [
      'Id',
      'Paciente',
      'Profissional',
      'Status',
      'Data'
    ];
    List<String> dados;

    return SingleChildScrollView(
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 600) {

            return Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.start, // Align items to the start
              children: [
                Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const FormProntuarioPage()),
                      );
                    },
                    icon: const Icon(Icons.add),
                    tooltip: 'Adicionar',
                  ),
                ),
                CustomTextWidget(
                  titulo: nomeCampo,
                  dados: ['1', 'Marcos', 'Psicologo', 'Masculino', '01-01-2024', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'],
                ),
                CustomTextWidget(
                  titulo: nomeCampo,
                  dados: ['2', 'Ana', 'Médica', 'Feminino', '01-01-2024', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'],
                ),
              ],
            );


         
        } else {

         return Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const FormProntuarioPage()));
                },
                icon: const Icon(Icons.add),
                tooltip: 'Adicionar',
              ),
              SizedBox(height: 2),
              CustomTable(
                quantidadeCampo: 'TabelaProntuario',
                nomeCampo: nomeCampo,
                dados: [
                  '1',
                  'João',
                  'Dra Marta',
                  'Privado',
                  '01-01-2024',
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
                ],
              ),
              SizedBox(height: 8),
              CustomTable(
                  quantidadeCampo: 'TabelaProntuario',
                  nomeCampo: nomeCampo,
                  dados: [
                    '1',
                    'João',
                    'Dra Marta',
                    'Publico',
                    '01-01-2024',
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
                  ]),
            ],
          );


        }
      }),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  final List<String> titulo;
  final List<String> dados;

  CustomTextWidget({required this.titulo, required this.dados});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0), // Top spacing
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(150, 173, 216, 230),
          borderRadius: BorderRadius.circular(12.0), // Circular border radius
          border: Border.all(
            color: const Color.fromARGB(150, 173, 216, 230),
            width: 2.0, // Border width
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
            children: [
              ...List.generate(titulo.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: RichText(
                    text: TextSpan(
                      text: '${titulo[index]}: ',
                      style: TextStyle(
                        fontSize: 18.0, // Font size for titulo
                        fontWeight: FontWeight.bold, // Font weight for titulo
                        color: Colors.grey, // Text color for titulo
                      ),
                      children: [
                        TextSpan(
                          text: dados[index],
                          style: TextStyle(
                            fontSize: 16.0, // Font size for dados
                            fontWeight: FontWeight.bold, // Font weight for dados
                            color: Colors.black, // Text color for dados
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
                //alignment: Alignment.centerRight, // Align in the bottom right corner
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProntuarioDetalhadoPageState(
                          dados: dados,
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.pageview_outlined),
                  tooltip: 'Editar',
                ),
            ],
          ),
        ),
      ),
    );
  }
}

