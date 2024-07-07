// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:oc/item_screens/kitchen/boilegg.dart';
import 'package:oc/item_screens/kitchen/breadomlete.dart';
import 'package:oc/item_screens/kitchen/bunomlete.dart';
import 'package:oc/item_screens/kitchen/bunsamosa.dart';
import 'package:oc/item_screens/kitchen/buuterbun.dart';
import 'package:oc/item_screens/kitchen/eggchow.dart';
import 'package:oc/item_screens/kitchen/eggfried.dart';
import 'package:oc/item_screens/kitchen/eggmaggi.dart';
import 'package:oc/item_screens/kitchen/halffry.dart';
import 'package:oc/item_screens/kitchen/macaroni.dart';
import 'package:oc/item_screens/kitchen/maggi.dart';
import 'package:oc/item_screens/kitchen/pakora.dart';
import 'package:oc/item_screens/kitchen/paneerpakora.dart';
import 'package:oc/item_screens/kitchen/samosa.dart';
import 'package:oc/item_screens/kitchen/scramble.dart';
import 'package:oc/item_screens/kitchen/vegchow.dart';
import 'package:oc/item_screens/kitchen/vegfried.dart';

class home_kitchen extends StatelessWidget {
  const home_kitchen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text(
          "KITCHEN MADE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.teal[400],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/cafe.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black
                .withOpacity(0.4), // Dark overlay to make text readable
          ),
          GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 150.0,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
              ),
              padding: EdgeInsets.all(10),
              children: [
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  borderOnForeground: true,
                  child: InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => vegchow())),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.amberAccent,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/kitchen.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "VEG. CHOWMEIN",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => samosa()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/samosa.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "SAMOSA",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => vegfried()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.brown,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/vegfried.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "VEG. FRIED RICE",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => macaroni()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.lime,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/macaroni.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "MACARONI",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bunsamosa()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.yellowAccent,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/bunsamosa.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "BUN SAMOSA",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => paneerpakora()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.deepOrange,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/paneerpakora.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "PANEER PAKORA",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => boilegg()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/boilegg.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "BOILED EGG",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => maggi()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/maggi.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "MAGGI",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => eggchow()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/eggchow.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "EGG CHOWMEIN",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => eggfried()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/eggfried.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "EGG FRIED RICE",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => eggmaggi()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/eggmaggi.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "EGG MAGGI",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => scramble()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/scramble.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "SCRAMBLED EGG",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => halfry()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/halfry.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "HALF FRIED EGG",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bunom()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/bunomlette.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "BUN OMLETTE",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => butterbun()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/butterbun.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "BUTTER BUN",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => pakora()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/pakora.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "PAKORA",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => breadom()),
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/breadomlette.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "BREAD OMLETTE",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
