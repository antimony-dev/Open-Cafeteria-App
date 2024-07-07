import 'package:flutter/material.dart';
import 'package:oc/home/home_page.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.deepPurple),
      home: home_page(),
    );
  }
}
