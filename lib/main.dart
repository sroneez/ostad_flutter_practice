import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile_page_test.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ProfilePageTest() ,
    );
  }
}