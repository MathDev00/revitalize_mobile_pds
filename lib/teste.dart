import 'package:flutter/material.dart';

// Widget -> componentres (classes) (tela) -> recebe filhos
//StatelessWidget -> Nada se altera (estado)
// Container -> global, Text -> local
main() {
  runApp(AppWideget(
    title: 'Fluterando 2',
  ));
}

class AppWideget extends StatelessWidget {
  final String title;

  const AppWideget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          title,
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: const Color.fromARGB(255, 43, 215, 31), fontSize: 20.0),
        ),
      ),
    );
  }
}

Center(
          child: GestureDetector(
              child: Text(
                'Contador > : $counter',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                
              }))


              