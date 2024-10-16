import 'package:flutter/material.dart';
import 'package:revitalize_mobile/widgets/app_bar.dart';

class FormFuncionarioPage extends StatefulWidget {
  const FormFuncionarioPage({super.key});

  @override
  __FormFuncionarioPageState createState() => __FormFuncionarioPageState();
}

class __FormFuncionarioPageState extends State<FormFuncionarioPage> {
  String nome = '';
  String ocupacao = ''; // Start with an empty string
  String genero = '';   // Start with an empty string
  String cpf = '';
  String email = '';
  String endereco = '';
  String cidade = '';   // Start with an empty string
  String cep = '';
  String senha = '';

  final List<String> ocupacaoItems = ['Médico', 'Psicologo', 'Psiquiatra'];
  final List<String> generoItems = ['Masculino', 'Feminino', 'Outro'];
  final List<String> cidadeItems = ['São Paulo', 'Rio de Janeiro', 'Belo Horizonte'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Cadastro Funcionário"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Icon(Icons.person, size: 60)),
              SizedBox(height: 20),

              TextField(
                onChanged: (text) {
                  nome = text;
                },
                decoration: const InputDecoration(
                  labelText: 'Nome',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),

              // Dropdown for Ocupação
              DropdownButtonFormField<String>(
                value: ocupacao.isEmpty ? null : ocupacao,
                decoration: const InputDecoration(
                  labelText: 'Ocupação',
                  border: OutlineInputBorder(),
                ),
                items: ocupacaoItems.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    ocupacao = newValue!;
                  });
                },
              ),
              SizedBox(height: 10),

              // Password Field
              TextField(
                obscureText: true,
                onChanged: (text) {
                  senha = text;
                },
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),

              // Dropdown for Gênero
              DropdownButtonFormField<String>(
                value: genero.isEmpty ? null : genero,
                decoration: const InputDecoration(
                  labelText: 'Gênero',
                  border: OutlineInputBorder(),
                ),
                items: generoItems.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    genero = newValue!;
                  });
                },
              ),
              SizedBox(height: 10),

              TextField(
                onChanged: (text) {
                  cpf = text;
                },
                decoration: const InputDecoration(
                  labelText: 'CPF',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),

              TextField(
                onChanged: (text) {
                  email = text;
                },
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),

              TextField(
                onChanged: (text) {
                  endereco = text;
                },
                decoration: const InputDecoration(
                  labelText: 'Endereço',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),

              // Dropdown for Cidade
              DropdownButtonFormField<String>(
                value: cidade.isEmpty ? null : cidade,
                decoration: const InputDecoration(
                  labelText: 'Cidade',
                  border: OutlineInputBorder(),
                ),
                items: cidadeItems.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    cidade = newValue!;
                  });
                },
              ),
              SizedBox(height: 10),

              TextField(
                onChanged: (text) {
                  cep = text;
                },
                decoration: const InputDecoration(
                  labelText: 'CEP',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle form submission
                  },
                  child: const Text('Cadastrar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
