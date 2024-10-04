import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 28, 5, 82),
      elevation: 2,
      iconTheme: IconThemeData(color: Colors.white), // Define a cor da seta
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

// Uso em seu widget
