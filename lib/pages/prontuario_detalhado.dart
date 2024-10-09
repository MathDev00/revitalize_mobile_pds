// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:revitalize_mobile/widgets/app_bar.dart';
import 'package:revitalize_mobile/widgets/custom_pront.dart';

/// Flutter code sample for [Table].

//void main() => runApp(const ProntuarioDetalhadoPage(dados: [],));

class ProntuarioDetalhadoPage extends StatelessWidget {
  final List<String> dados;

  const ProntuarioDetalhadoPage({super.key, required this.dados});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(title: "Funcionarios"),
      ),
    );
  }
}

class ProntuarioDetalhadoPageState extends StatelessWidget {
  final List<String> dados;

  const ProntuarioDetalhadoPageState({super.key, required this.dados});

  @override
  Widget build(BuildContext context) {
    List<String> nomeCampo = [
      'Id',
      'Paciente',
      'Profissional',
      'Status',
      'Data',
      'Descrição'
    ];

    return MaterialApp(
      home: 
      Scaffold(
        appBar: CustomAppBar(title: 'Prontuario'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomPront(
                nomeCampo: nomeCampo,
                dados: dados,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
