import 'package:flutter/material.dart';

class customTable extends StatelessWidget {
  const customTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   double availableHeight =  MediaQuery.of(context).size.height;
   double availableWidth =  MediaQuery.of(context).size.width;



    return Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Table(
            border: TableBorder.all(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
