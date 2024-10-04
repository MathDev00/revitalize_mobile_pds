import 'package:flutter/material.dart';
import 'package:revitalize_mobile/app_bar.dart';

class FuncionarioPage extends StatefulWidget {
  @override
  _FuncionarioPageState createState() => _FuncionarioPageState();
}

class _FuncionarioPageState extends State<FuncionarioPage> {
  final List<Map<String, dynamic>> funcionarios = [
    {
      'id': 1,
      'nome': 'João Silva',
      'cpf': '787.458.785-35',
      'ocupacao': 'Desenvolvedor'
    },
    {
      'id': 2,
      'nome': 'Maria Oliveira',
      'cpf': '787.458.785-35',
      'ocupacao': 'Designer'
    },
    {
      'id': 3,
      'nome': 'Carlos Souza',
      'cpf': '787.458.785-35',
      'ocupacao': 'Gerente'
    },
  ];

  void _cadastrarFuncionario() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Revitalize"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('ID', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Nome', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('CPF', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Ocupação', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: _cadastrarFuncionario,
                icon: Icon(Icons.add, size: 30), // Ícone de adicionar
                color: Theme.of(context).primaryColor, // Cor do ícone
              ),
            ),
            ...funcionarios.map((funcionario) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(150, 173, 216, 230), // Cor azul clara
                  borderRadius: BorderRadius.circular(12), // Bordas arredondadas
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(funcionario['id'].toString(), style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(funcionario['nome'], style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(funcionario['cpf'], style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(funcionario['ocupacao'], style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
