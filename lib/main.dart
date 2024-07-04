import 'package:flutter/material.dart';
import 'package:oc/sign%20up_in/Sign_In_Page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.deepPurple),
      home: SplashScreen(),
    );
  }
}
