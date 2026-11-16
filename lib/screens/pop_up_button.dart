import 'package:flutter/material.dart';
class PopUpButton extends StatefulWidget {
  const new({super.key});

  @override
  State<PopUpButton> createState() => _PopUpButtonState();

}
List<String> items=["Profil","Setting","Payment","Logout"];
class _PopUpButtonState extends State<PopUpButton> {
  
  String value=items[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        actions: [
          PopupMenuButton(itemBuilder:(context){
            return items.map((i)=>PopupMenuItem(value: i,child:Text(i))).toList();
          },
          initialValue: value,
          menuPadding: EdgeInsets.all(40),
          offset: Offset(0,50),
          onOpened: () {
            debugPrint("opened");
          },
          onCanceled: () {
            debugPrint("cloced");
          },
          onSelected: (newvalue) {
            setState(() {
              value=newvalue;
              
            });
            debugPrint(value);
          },
          
          
          ),
        ],
      ),
      body: Center(child: Text("pop up button")),
    );
  }
}