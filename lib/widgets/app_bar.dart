import 'package:flutter/material.dart';
import 'package:revitalize_mobile/pages/tela_inicial.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back), 
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MyHomePage()));
        },
      ),
      backgroundColor: const Color.fromARGB(255, 28, 5, 82),
      elevation: 2,
      iconTheme:
          const IconThemeData(color: Colors.white), 
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }
}

// Uso em seu widget
