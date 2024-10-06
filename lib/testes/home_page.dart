import 'package:flutter/material.dart';
import 'package:revitalize_mobile/testes/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    //
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Revitalize'),
        actions: const [

          CustomSwitcher() //componentização, criando componentes!

        ],
        backgroundColor: Colors.greenAccent,
      ),
      body: SizedBox(

        width: double.infinity,
        height: double.infinity,
      
            child: Column(
            
        children: [

          Text('Contador:  $counter'),
          Row(
            children: [

              Container(

                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(

                width: 50,
                height: 50,
                color: Colors.black,
              ),
            ]


          ),
        const CustomSwitcher(),

        ],


      ),
    ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },
      ),
    );
  }
}
      class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({super.key});


  @override
  Widget build(BuildContext context) {
    return   Switch(
            value: AppController.instance.isDartTheme,
            onChanged: (value) {
              AppController.instance.changeTheme();
            });
  }
}