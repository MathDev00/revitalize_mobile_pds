// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:revitalize_mobile/pages/prontuario_detalhado.dart';
import 'package:revitalize_mobile/pages/tela_inicial.dart';
import 'package:revitalize_mobile/widgets/custom_pront.dart';

class CustomTable extends StatelessWidget {
  final String quantidadeCampo;
  final List<String> nomeCampo;
  final List<String> dados;

  CustomTable({
    super.key,
    required this.quantidadeCampo,
    required this.nomeCampo,
    required this.dados,
  });

  @override
  Widget build(BuildContext context) {
    double availableHeight = MediaQuery.of(context).size.height;
    double availableWidth = MediaQuery.of(context).size.width;

    // ignore: dead_code
    if (quantidadeCampo == '4') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: availableWidth * 0.9,
            height: availableHeight * 0.2,
            decoration: BoxDecoration(
              color: const Color.fromARGB(150, 173, 216, 230),
              border: Border.all(
                width: 2,
                color: const Color.fromARGB(150, 173, 216, 230),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2, // Aumenta a largura dessa coluna
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nomeCampo[0],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Text(dados[0],
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8), // Espaço entre os textos
                      Text(
                        nomeCampo[1],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Text(dados[1],
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nomeCampo[2],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Text(dados[2],
                          style: TextStyle(fontWeight: FontWeight.bold)),

                      SizedBox(height: 8), // Espaço entre os textos

                      Text(
                        nomeCampo[3],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Text(dados[3],
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Ação de edição
                        },
                        icon: const Icon(Icons.edit),
                        tooltip: 'Editar',
                      ),
                      IconButton(
                        onPressed: () {
                          // Ação de deleção
                        },
                        icon: const Icon(Icons.delete),
                        tooltip: 'Deletar',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      );
    }

    if (quantidadeCampo == 'TabelaProntuario') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: availableWidth * 0.9,
            height: availableHeight * 0.25,
            decoration: BoxDecoration(
              color: const Color.fromARGB(150, 173, 216, 230),
              border: Border.all(
                width: 2,
                color: const Color.fromARGB(150, 173, 216, 230),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2, // Aumenta a largura dessa coluna
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nomeCampo[0],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Text(dados[0],
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8), // Espaço entre os textos
                      Text(
                        nomeCampo[1],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Text(dados[1],
                          style: TextStyle(fontWeight: FontWeight.bold)),

                      Center(
                        child: Text(
                          nomeCampo[2],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                      Text(dados[2],
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        nomeCampo[3],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),

                      if (dados[3] == 'Privado')
                        Text(dados[3],
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),

                      if (dados[3] == 'Publico')
                        Text(dados[3],
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold)),

                      SizedBox(height: 8), // Espaço entre os textos

                      SizedBox(height: 8), // Espaço entre os textos

                      Text(
                        nomeCampo[4],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Text(dados[4],
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>  ProntuarioDetalhadoPageState(
                          
                          dados: [
                            
                          dados[0], 
                          dados[1], 
                          dados[2],
                          dados[3],
                          dados[4], 
                          dados[5], 
                          ])));                        },
                        icon: const Icon(Icons.pageview_outlined),
                        tooltip: 'Editar',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      );
    }

    if (quantidadeCampo == '8') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
             Container(
              padding: const EdgeInsets.all(10),
              width: availableWidth * 0.9,
              height: availableHeight * 0.3,
              decoration: BoxDecoration(
                color: const Color.fromARGB(150, 173, 216, 230),
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(150, 173, 216, 230),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2, // Aumenta a largura dessa coluna
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nomeCampo[0],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text(dados[0],
                            style: TextStyle(fontWeight: FontWeight.bold)),
            
                        SizedBox(height: 8), // Espaço entre os textos
            
                        Text(
                          nomeCampo[1],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text(dados[1],
                            style: TextStyle(fontWeight: FontWeight.bold)),
            
                        SizedBox(height: 8), // Espaço entre os textos
            
                        Text(
                          nomeCampo[2],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text(dados[2],
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nomeCampo[3],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text(dados[3],
                            style: TextStyle(fontWeight: FontWeight.bold)),
            
                        SizedBox(height: 8), // Espaço entre os textos
            
                        Text(
                          nomeCampo[4],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text(dados[4],
                            style: TextStyle(fontWeight: FontWeight.bold)),
            
                        SizedBox(height: 8), // Espaço entre os textos
            
                        Text(
                          nomeCampo[5],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text(dados[5],
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            // Ação de edição
                          },
                          icon: const Icon(Icons.edit),
                          tooltip: 'Editar',
                        ),
                        IconButton(
                          onPressed: () {
                            // Ação de deleção
                          },
                          icon: const Icon(Icons.delete),
                          tooltip: 'Deletar',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          
        ],
      );
    } else {
      return Center(
        child: Text("Nenhum dado disponível."),
      );
    }
  }
}
// Uso em seu widget
