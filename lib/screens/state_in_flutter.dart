import 'package:flutter/material.dart';
class StateInFlutter extends StatefulWidget  {


  @override
  State<StatefulWidget> createState() {
    return StateTest();
  }
}
class StateTest extends State<StateInFlutter>{
  Color c=Colors.white;
  Color appBarcolor=Colors.brown;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(child: Text("Test Widget")),backgroundColor:appBarcolor ,),
      backgroundColor: c,
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed:(){
                setState(() {
                  c=const Color.fromARGB(255, 237, 203, 191);
                });
              }, child:Text("change Color")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed:(){
                setState(() {
                  appBarcolor=const Color.fromARGB(255, 35, 188, 178);
                });
              }, child:Text("change color AppBar")),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                c=Colors.white;
              });
            }, child:Text("restart color") )
            
          ],
        ),
      ),
      
         ); 

        }
      
    
  }
