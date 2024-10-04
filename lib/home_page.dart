import 'package:flutter/material.dart';
import 'package:revitalize_mobile/app_controller.dart';

class HomePage extends StatefulWidget {
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
        title: Text('Revitalize'),
        actions: [

          CustomSwitcher() //componentização, criando componentes!

        ],
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(

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
        CustomSwitcher(),

        ],


      ),
    ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
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

  @override
  Widget build(BuildContext context) {
    return   Switch(
            value: AppController.instance.isDartTheme,
            onChanged: (value) {
              AppController.instance.changeTheme();
            });
  }
}