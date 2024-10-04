import 'package:flutter/material.dart';
import 'package:revitalize_mobile/tela_inicial.dart';
//import 'package:flutter/revitalize_mobile/tela_inicial.dart';

class LoginPage extends StatefulWidget {
  @override
  __LoginPageState createState() => __LoginPageState();
}

class __LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';




  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),

            child: Column(


              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset('assets/images/logo.png'),

                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  decoration: InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  onChanged: (text) {
                    password = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (email == 'mat@gmail.com' && password == '123') {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MainApp()));
                    } else {
                      print("Errado!");
                    }
                  },
                  child: Text('Entrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
