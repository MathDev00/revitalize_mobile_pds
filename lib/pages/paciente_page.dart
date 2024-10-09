// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:revitalize_mobile/pages/form_paciente.dart';
import 'package:revitalize_mobile/widgets/app_bar.dart';
import 'package:revitalize_mobile/pages/form_funcionario.dart';
import 'package:revitalize_mobile/widgets/custom_table.dart';

/// Flutter code sample for [Table].

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
    //double availableHeight = MediaQuery.of(context).size.height;
    //double availableWidth = MediaQuery.of(context).size.width;

    List<String> nomeCampo =  ['Id', 'Paciente', 'Gênero', 'Data Nascimento', 'E-mail', 'Endereço', 
            'Cidade', 'CEP'];
    List<String> dados;


    return SingleChildScrollView(
      child: Column(
        children: [
          IconButton(
            onPressed: () {

               Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const FormPacientePage()),
              );
            },
            icon: const Icon(Icons.add),
            tooltip: 'Adicionar',
          ),

          SizedBox(height: 8),

          CustomTable(
            quantidadeCampo: '8',
            nomeCampo: nomeCampo,
            dados: ['1', 'João','Masculino' ,'01-01-2024', 'joão@gmail.',' Rua 09 s/n', 
    'Ceres','76300'],
          ),

          SizedBox(height: 8),

          CustomTable(
            quantidadeCampo: '8',
            nomeCampo: nomeCampo,
            dados: ['2', 'Maria','Feminino' ,'01-01-2024', 'joão@gmail.',' Rua 09 s/n', 
    'Ceres','76300'],
          ),

          SizedBox(height: 8),

        ],
      ),
    );
  }
}
