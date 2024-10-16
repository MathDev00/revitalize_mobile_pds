import 'package:flutter/material.dart';

class CustomPront extends StatelessWidget {
  final List<String> nomeCampo;
  final List<String> dados;

  CustomPront({
    super.key,
    required this.nomeCampo,
    required this.dados,
  });

  @override
  Widget build(BuildContext context) {
    double availableHeight = MediaQuery.of(context).size.height;
    double availableWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: availableWidth * 1.0,
                height: availableHeight * 0.9,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(150, 173, 216, 230),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(150, 173, 216, 230),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    // Primeira coluna
                    _buildField(nomeCampo[0], dados[0]),
                    _buildField(nomeCampo[1], dados[1]),
                    // Segunda coluna
                    _buildField(nomeCampo[2], dados[2]),
                    _buildField(nomeCampo[3], dados[3]),
                    _buildField(nomeCampo[4], dados[4]),
                    // Terceira coluna
                    _buildFieldWithOverflow(nomeCampo[5], dados[5]),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildField(String campo, String dado) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          campo,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey),
        ),
        Text(
          dado,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Espaço entre os textos
      ],
    );
  }

  Widget _buildFieldWithOverflow(String campo, String dado) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          campo,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey),
        ),
        Container(
          constraints: BoxConstraints(maxHeight: 40),
          child: Text(
            dado,
            maxLines: 15,
            overflow: TextOverflow.visible,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 8), 
      ],
    );
  }
}
