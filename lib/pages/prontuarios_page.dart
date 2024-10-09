
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
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
        appBar: CustomAppBar(title: "Funcionarios"),
        body: const ProntuariosPageState(),
      ),
    );
  }
}

class ProntuariosPageState extends StatelessWidget {
  const ProntuariosPageState({super.key});

  @override
  Widget build(BuildContext context) {


    List<String> nomeCampo =  ['Id', 'Paciente', 'Profissional', 
    'Status','Data'];
    List<String> dados;


    return SingleChildScrollView(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
             
            },
            icon: const Icon(Icons.add),
            tooltip: 'Adicionar',
          ),
          SizedBox(height: 2),
      
          CustomTable(
              quantidadeCampo: 'TabelaProntuario',
              nomeCampo: nomeCampo,
              dados: ['1', 'João','Dra Marta' ,'Privado', '01-01-2024', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'],    
              
                      ),
          SizedBox(height: 8),

           CustomTable(
              quantidadeCampo: 'TabelaProntuario',
              nomeCampo: nomeCampo,
              dados: ['1', 'João','Dra Marta' ,'Publico', '01-01-2024', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.']),             
        
        
        
        ],
  
        
      ),
    );
  }
}
