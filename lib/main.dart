import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'list_view_builder_test.dart';
import 'user.dart';
//import 'package:untitled/text_filed.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ListViewBuilderTest() ,
    );
  }
}