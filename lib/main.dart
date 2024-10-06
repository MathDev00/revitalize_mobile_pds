import 'package:flutter/material.dart';
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


main() {

  
  runApp(const AppWideget());
}

// StatelessWidget -> É estático!

class AppWideget extends StatelessWidget {
  const AppWideget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: const LoginPage(),
          //routes:  ,
        );
  }
}




