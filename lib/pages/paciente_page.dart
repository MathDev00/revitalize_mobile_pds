import 'package:flutter/material.dart';
import 'package:revitalize_mobile/pages/form_paciente.dart';
import 'package:revitalize_mobile/widgets/app_bar.dart';
import 'package:revitalize_mobile/pages/form_funcionario.dart';
import 'package:revitalize_mobile/widgets/custom_table.dart';

void main() => runApp(const PacientePage());

class PacientePage extends StatelessWidget {
  const PacientePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(title: "Pacientes"),
        body: const PacientePageState(),
      ),
    );
  }
}

class PacientePageState extends StatelessWidget {
  const PacientePageState({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> nomeCampo = [
      'Id',
      'Paciente',
      'Gênero',
      'Data Nascimento',
      'E-mail',
      'Endereço',
      'Cidade',
      'CEP',
    ];

    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
         

          if (constraints.maxWidth >= 600) {
            // Layout para web

            return Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FormPacientePage()));
                    },
                    icon: const Icon(Icons.add),
                    tooltip: 'Adicionar',
                  ),
                ),
                CustomTextWidget(
                  titulo: nomeCampo,
                  dados: [
                    '1',
                    'João',
                    'Masculino',
                    '01-01-2024',
                    'joão@gmail.com',
                    'Rua 09 s/n',
                    'Ceres',
                    '76300'
                  ],
                ),
                CustomTextWidget(
                  titulo: nomeCampo,
                  dados: [
                    '2',
                    'Maria',
                    'Feminino',
                    '02-02-2023',
                    'maria@gmail.com',
                    'Rua 10 nº 16',
                    'Anápolis',
                    '75000'
                  ],
                ),
              ],
            );
          } else {
            // Layout para Android/iOS
            return Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FormPacientePage()));
                  },
                  icon: const Icon(Icons.add),
                  tooltip: 'Adicionar',
                ),
                SizedBox(height: 8),
                CustomTable(
                  quantidadeCampo: '8',
                  nomeCampo: nomeCampo,
                  dados: [
                    '1',
                    'João',
                    'Masculino',
                    '01-01-2024',
                    'joão@gmail.com',
                    'Rua 09 s/n',
                    'Ceres',
                    '76300'
                  ],
                ),
                SizedBox(height: 8),
                CustomTable(
                  quantidadeCampo: '8',
                  nomeCampo: nomeCampo,
                  dados: [
                    '2',
                    'Maria',
                    'Feminino',
                    '02-02-2023',
                    'maria@gmail.com',
                    'Rua 10 nº 16',
                    'Anápolis',
                    '75000'
                  ],
                ),
                SizedBox(height: 8),
              ],
            );
          }
        },
      ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(titulo.length, (index) {
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
          ),
        ),
      ),
    );
  }
}

