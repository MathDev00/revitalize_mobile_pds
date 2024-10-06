// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:revitalize_mobile/widgets/app_bar.dart';
import 'package:revitalize_mobile/pages/form_funcionario.dart';
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


    List<String> nomeCampo =  ['Id', 'Paciente', 'Ocupação', 'Gênero'];
    List<String> dados;


    return SingleChildScrollView(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const FormFuncionarioPage()),
              );
            },
            icon: const Icon(Icons.add),
            tooltip: 'Adicionar',
          ),
          SizedBox(height: 2),
      
          CustomTable(
              quantidadeCampo: 4,
              nomeCampo: nomeCampo,
              dados: ['1', 'Marcos','Psicologo' ,'Masculino'],
            ),
        ],
      ),
    );
  }
}
