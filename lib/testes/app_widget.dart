import 'package:flutter/material.dart';
import 'package:revitalize_mobile/testes/app_controller.dart';
//import 'package:revitalize_mobile/home_page.dart';
import 'package:revitalize_mobile/pages/login_page.dart';


// StatelessWidget -> É estático!

class AppWideget extends StatelessWidget {
  const AppWideget({super.key});

  @override
  Widget build(BuildContext context) => AnimatedBuilder(

      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          home: const LoginPage(),
        );
      },
    );
}
