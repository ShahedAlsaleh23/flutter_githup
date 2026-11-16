import 'package:flutter/material.dart';
import 'package:flutter_application_21/Quiz%20App/pages/home_page.dart';
import 'package:flutter_application_21/images_test.dart';
import 'package:flutter_application_21/screens/buttons.dart';
import 'package:flutter_application_21/screens/call_screen1.dart';
import 'package:flutter_application_21/screens/pop_up_button.dart';
import 'package:flutter_application_21/screens/state_in_flutter.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
    
    
  }
}
