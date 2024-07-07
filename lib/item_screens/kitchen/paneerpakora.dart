import 'package:flutter/material.dart';


class paneerpakora extends StatelessWidget {
  paneerpakora({super.key});

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
                  image: AssetImage('assets/images/cafe.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.4), // Dark overlay to make text readable
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
                          image: DecorationImage(image: AssetImage('assets/images/boilegg.jpeg'
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
                          '\nBOILED EGG',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '\nEgg boiled to perfection , topped with salt and pepper.',
                          style: TextStyle(color: Colors.white70,
                          fontSize: 25,),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        Text(
                          '\nPrice: ₹ 9',
                          style: TextStyle(fontSize: 30
                          , color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          ),
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
