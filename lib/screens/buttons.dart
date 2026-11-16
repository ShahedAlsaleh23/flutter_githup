import 'package:flutter/material.dart';
class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(
        children: [
          ElevatedButton(onPressed:(){}
          , child:Text("Enabled"),style:ElevatedButton.styleFrom(
            backgroundColor: Colors.amber
          ),),
          ElevatedButton.icon(onPressed: (){}, label: Text("add"),icon: Icon(Icons.add),)
        ],
      )),

    );
  }
}