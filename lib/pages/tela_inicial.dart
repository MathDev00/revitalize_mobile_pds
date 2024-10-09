import 'package:flutter/material.dart';
import 'package:revitalize_mobile/pages/login_page.dart';
import 'package:revitalize_mobile/pages/funcionario_page.dart';
import 'package:revitalize_mobile/pages/paciente_page.dart';
import 'package:revitalize_mobile/pages/prontuarios_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  void _onFuncionarioPressed () {

  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const FuncionarioPage()));

  }


  void _onPacientePressed () {

  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const PacientePage()));

  }

  void _onProntuariosPressed () {

  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const ProntuariosPage()));

  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Revitalize",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 28, 5, 82),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          GestureDetector(
            onTap: _onProntuariosPressed, 
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(150, 173, 216, 230),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: const EdgeInsets.only(bottom: 10), // Ajusta a margem inferior
              child: const Text(
                "Prontuários",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: _onPacientePressed, // Chama a função ao pressionar
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(150, 173, 216, 230),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                "Paciente",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: _onFuncionarioPressed,
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(150, 173, 216, 230),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: const EdgeInsets.only(bottom: 10), // Ajusta a margem inferior
              child: const Text(
                "Funcionário",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const LoginPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
