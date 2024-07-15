import 'package:flutter/material.dart';

class JuitCafeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JuitCafeHomePage(),
    );
  }
}

class JuitCafeHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/burger.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/cafe name.png',
                  height: 100,
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Add navigation or action here
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white.withOpacity(0.8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.restaurant_menu,
                            size: 30, color: Colors.brown),
                        SizedBox(height: 5),
                        Text(
                          'CAFE',
                          style: TextStyle(color: Colors.brown, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
