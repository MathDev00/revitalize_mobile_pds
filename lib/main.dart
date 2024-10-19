import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:revitalize_mobile/pages/login_page.dart';

// Widget -> componentres (classes) (tela) -> recebe filhos
// StatelessWidget -> Nada se altera (estado)
// Container -> global, Text -> local
// Statefull permite alterar a visualização durante o app
// setState() -> modifica o estado, fruto do statefull
// Material App -> estilização
// Container() - > Parecido com a div
// Multi render (design sobre outros renders) e single render ->
// ChangeNotifier - > apenas regra de negócio!!

void main() async {

  final keyApplicationId = 'YOUR_APPLICATION_ID_HERE';
  final keyClientKey = 'YOUR_CLIENT_KEY_HERE';
  final keyParseServerUrl = 'https://parseapi.back4app.com';

  runApp(const AppWideget());
}

// StatelessWidget -> É estático!

class AppWideget extends StatelessWidget {
  const AppWideget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      //routes:  ,
    );
  }
}
