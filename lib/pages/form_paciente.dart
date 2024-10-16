import 'package:flutter/material.dart';
import 'package:revitalize_mobile/widgets/app_bar.dart';

class FormPacientePage extends StatefulWidget {
  const FormPacientePage({super.key});

  @override
  __FormPacientePageState createState() => __FormPacientePageState();
}

class __FormPacientePageState extends State<FormPacientePage> {
  String nome = '';
  String ocupacao = 'Estudante'; // Default value
  String genero = 'Masculino';  // Default value
  String cpf = '';
  String email = '';
  String endereco = '';
  String cidade = 'São Paulo';  // Default value
  String cep = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Cadastro Paciente"),
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
            
              SizedBox(height: 10),

              // Dropdown for Gênero
              DropdownButtonFormField<String>(
                value: genero,
                decoration: const InputDecoration(
                  labelText: 'Gênero',
                  border: OutlineInputBorder(),
                ),
                items: ['Masculino', 'Feminino', 'Outro'].map((String value) {
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
                value: cidade,
                decoration: const InputDecoration(
                  labelText: 'Cidade',
                  border: OutlineInputBorder(),
                ),
                items: ['São Paulo', 'Rio de Janeiro', 'Belo Horizonte']
                    .map((String value) {
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
