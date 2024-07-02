import 'package:flutter/material.dart';
import 'package:oc/widgets/splash_screen.dart';

<<<<<<< HEAD
void main() => runApp(new MyApp());
=======
void main() {
  runApp(MyApp());
}
>>>>>>> Shashwat-Dev

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
