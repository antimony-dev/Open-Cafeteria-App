import 'package:flutter/material.dart';
import 'package:oc/home/exp.dart';
import 'package:oc/home/home_page.dart';



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: home_page(),
    );
  }
}
