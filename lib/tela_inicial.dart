import 'package:flutter/material.dart';
import 'package:revitalize_mobile/login_page.dart';
import 'package:revitalize_mobile/funcionario_page.dart';




class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

void _onFuncionarioPressed() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => FuncionarioPage()),
      );
   
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Revitalize",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 28, 5, 82),
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(150, 173, 216, 230),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            margin: EdgeInsets.only(bottom: 10), // Ajusta a margem inferior
            child: Text(
              "Prontuários",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(150, 173, 216, 230),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            margin: EdgeInsets.only(bottom: 10), // Ajusta a margem inferior
            child: Text(
              "Paciente",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GestureDetector(
            onTap: _onFuncionarioPressed, // Chama a função ao pressionar
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(150, 173, 216, 230),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.only(bottom: 10), // Ajusta a margem inferior
              child: Text(
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
              icon: Icon(Icons.logout),
              onPressed: () {
                 Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}