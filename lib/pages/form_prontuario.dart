import 'package:flutter/material.dart';
import 'package:revitalize_mobile/widgets/app_bar.dart';

class FormProntuarioPage extends StatefulWidget {
  const FormProntuarioPage({super.key});

  @override
  __FormProntuarioPageState createState() => __FormProntuarioPageState();
}

class __FormProntuarioPageState extends State<FormProntuarioPage> {
  String email = '';
  String password = '';

  // Variables to hold the selection
  String paciente = 'Paciente A';
  String profissional = 'Profissional X';
  String privacidade = 'Privado';
  String prontuarioTexto = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Cadastro Prontuário"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns elements to the start
            children: [
              Center(child: Icon(Icons.person, size: 60)),
              SizedBox(height: 20),

              // Row for Paciente Dropdown
              Row(
                children: [
                  //const Text("Paciente: ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: DropdownButton<String>(
                      value: paciente,
                      isExpanded: true,
                      items: ['Paciente A', 'Paciente B', 'Paciente C']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          paciente = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Row for Profissional Dropdown
              Row(
                children: [
                  //const Text("Profissional: ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: DropdownButton<String>(
                      value: profissional,
                      isExpanded: true,
                      items: ['Profissional X', 'Profissional Y', 'Profissional Z']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          profissional = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Row for Privacidade Dropdown
              Row(
                children: [
                  //const Text("Privacidade: ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: DropdownButton<String>(
                      value: privacidade,
                      isExpanded: true,
                      items: ['Privado', 'Publicado'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          privacidade = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // TextField for Prontuário Texto
              TextField(
                onChanged: (text) {
                  prontuarioTexto = text;
                },
                maxLines: 5,
                decoration: const InputDecoration(
                    labelText: 'Texto do Prontuário',
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle form submission
                  },
                  child: const Text('Cadastrar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
