import 'package:flutter/material.dart';
class CallScreen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: SafeArea(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
            Color(0xcd7268ea),
            Color(0xcd686ae4),
            Color(0xcd616be5),
            Color(0xcd5a6ce3),
            Color(0xcd4f6ee2),
            Color(0xcd4673db),
            Color(0xcd3972de),

          ])
        ),
        child: Column(
          mainAxisAlignment: .spaceAround,
          children: [
            Column(
              children: [
                Text("sister",style: TextStyle(
                  fontSize: 35,
                  color:Colors.white,
                  fontWeight: .bold
                ),),
                Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: NetworkImage("https://img.magnific.com/free-vector/blue-circle-with-white-user_78370-4707.jpg?semt=ais_hybrid&w=740&q=80"),
                fit: BoxFit.cover),
                
              ),
            ),
              ],
            ),
            
            Text("CALLING ....",style: TextStyle(
              color:Colors.white,
              fontSize: 30
            ),),
            Row(
              mainAxisAlignment: .spaceAround,
              children: [
                iconContainer(icon:  Icons.call,iconColor:  Colors.green,bgColor: Colors.white),
                iconContainer(icon:  Icons.call_end,iconColor:  Colors.red,bgColor: Colors.white)
              ],
            ),
            Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200
              ),
              child:Center(child: Text("send a massege"))

            )

          ],
        ),
      ),
    ),
   );
  }
  Widget iconContainer({required IconData icon,required Color iconColor,Color? bgColor}){
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,color: bgColor
      ),
      child: Icon(icon,color: iconColor,size: 35,),
    );
  }
}