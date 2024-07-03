import 'package:flutter/material.dart';


class tofee extends StatelessWidget {
  tofee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading:BackButton(color: Colors.black,)
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/burger.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.6), // Dark overlay to make text readable
            ),
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child:
                      Container(
                        height: 350,
                        width: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/burger.jpeg'
                          ),
                          fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(30),

                        ),
                        
                      ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 260), // Adjust according to image height
                        Text(
                          'borgir',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Juicy aloo patty, uncle ki mayoni, crispy shimla mirch, crunchy cucumber, and tangy tomato on a toasted bun.',
                          style: TextStyle(color: Colors.white70,
                          fontSize: 20,),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Price: ₹ 30',
                          style: TextStyle(fontSize: 30
                          , color: Colors.cyanAccent[200]),
                        ),
                        SizedBox(height: 30),
                        
                      ],
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
