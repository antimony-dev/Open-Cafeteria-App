// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:oc/home/home_bakery.dart';
import 'package:oc/home/home_coldrinks.dart';
import 'package:oc/home/home_hotdrinks.dart';
import 'package:oc/home/home_ice.dart';
import 'package:oc/home/home_kitchen.dart';
import 'package:oc/home/home_ready.dart';
import 'package:oc/home/home_special.dart';
import 'package:oc/item_screens/colddrinks/appy.dart';



class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Builder(
          builder: (context) {
            return Drawer(
              child: Container(
                color: Colors.teal[400],
                child: ListView(
                  children: [
                    DrawerHeader(
                      child: Center(child: 
                          Text ("O C",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          ),
                      ),
                    ),
                    ),
                    ListTile(
                      hoverColor: Colors.blue,
                      leading: Icon(Icons.all_inclusive_rounded),
                      title: Text("SPECIAL",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => home_special())),
            
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    ListTile(
                      hoverColor: Colors.blue,
                      leading: Icon(Icons.all_inclusive_rounded),
                      title: Text("BAKERY",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => home_bakery())),
            
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    ListTile(
                      hoverColor: Colors.blue,
                      leading: Icon(Icons.all_inclusive_rounded),
                      title: Text("HOT DRINKS",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => home_hotdrinks())),
            
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    ListTile(
                      hoverColor: Colors.blue,
                      leading: Icon(Icons.all_inclusive_rounded),
                      title: Text("COLD DRINKS",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => home_coldrinks())),
            
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    ListTile(
                      hoverColor: Colors.blue,
                      leading: Icon(Icons.all_inclusive_rounded),
                      title: Text("KITCHEN MADE",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => home_kitchen())),
            
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    ListTile(
                      hoverColor: Colors.blue,
                      leading: Icon(Icons.all_inclusive_rounded),
                      title: Text("READY MADE",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => home_ready())),
            
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    ListTile(hoverColor: Colors.blue,
                      leading: Icon(Icons.all_inclusive_rounded),
                      title: Text("ICECREAM",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => home_ice())),
            
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    ListTile(
                      hoverColor: Colors.black,
                      leading: Icon(Icons.logout),
                      title: Text("LOGOUT",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => appy())),
                    
                    ),
                  ],
                ),
              ),
            );
          }
        ),

        appBar: AppBar(
      title: Text("Open Cafeteria",
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
              color: Colors.black.withOpacity(0.4), // Dark overlay to make text readable
            ),


        GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent:250.0,
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
            onTap: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) => home_special())),
            child: Container(
              
              width:150,
              height:150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amberAccent,
                width: 2.0,),
                image: DecorationImage(image: AssetImage("assets/images/special.jpeg"),
                fit: BoxFit.cover,
                
                ),
                boxShadow:[BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                )],
                 borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text("SPECIAL",style: TextStyle(fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                ),),
                ],
                ),
            ),
          ),
 ),


 Card(
   elevation: 10,
  shadowColor: Colors.black,
       child: InkWell(
            onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (context) => home_bakery()
        ),
        ),
            child: Container(
              width:150,
              height:150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent,
                width: 2.0,),
                image: DecorationImage(image: AssetImage("assets/images/pexels-photo-1633578.png"),
                fit: BoxFit.cover,
                ),
                 boxShadow:[BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                )],
                 borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text("BAKERY",style: TextStyle(fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                ),),
                ],
                ),
            ),
          ),
 ),



 Card(
   elevation: 10,
  shadowColor: Colors.black,
       child: InkWell(
            onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (context) => home_hotdrinks()
        ),
        ),
            child: Container(
              width:150,
              height:150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown,
                width: 2.0,),
                image: DecorationImage(image: AssetImage("assets/images/hotdrink.jpeg"),
                fit: BoxFit.cover,
                ),
                 boxShadow:[BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                )],
                 borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text("HOT DRINKS",style: TextStyle(fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                ),),
                ],
                ),
            ),
          ),
 ),



 Card(
   elevation: 10,
  shadowColor: Colors.black,
       child: InkWell(
            onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (context) => home_coldrinks()
        ),
        ),
            child: Container(
              width:150,
              height:150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lime,
                width: 2.0,),
                image: DecorationImage(image: AssetImage("assets/images/coldrink.jpeg"),
                fit: BoxFit.cover,
                ),
                 boxShadow:[BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                )],
                 borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text("COLD DRINKS",style: TextStyle(fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                ),),
                ],
                ),
            ),
          ),
 ),



 Card(
   elevation: 10,
  shadowColor: Colors.black,
       child: InkWell(
            onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (context) => home_kitchen()
        ),
        ),
            child: Container(
              width:150,
              height:150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellowAccent,
                width: 2.0,),
                image: DecorationImage(image: AssetImage("assets/images/kitchen.jpeg"),
                fit: BoxFit.cover,
                ),
                 boxShadow:[BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                )],
                 borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text("KITCHEN MADE",style: TextStyle(fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                ),),
                ],
                ),
            ),
          ),
 ),



 Card(
   elevation: 10,
  shadowColor: Colors.black,
       child: InkWell(
            onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (context) => home_ready()
        ),
        ),
            child: Container(
              width:150,
              height:150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepOrange,
                width: 2.0,),
                image: DecorationImage(image: AssetImage("assets/images/ready.jpeg"),
                fit: BoxFit.cover,
                ),
                 boxShadow:[BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                )],
                 borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text("READY MADE",style: TextStyle(fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                ),),
                ],
                ),
            ),
          ),
 ),



 Card( elevation: 10,
  shadowColor: Colors.black,
       child: InkWell(
            onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (context) => home_ice()
        ),
        ),
            child: Container(
              width:150,
              height:150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,
                width: 2.0,
                ),
                image: DecorationImage(image: AssetImage("assets/images/icecream.jpeg"),
                fit: BoxFit.cover,
                ),
                 boxShadow:[BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                )],
                 borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text("ICECREAMS",style: TextStyle(fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                ),),
                ],
                ),
            ),
          ),
 ),
            ]
            ),
   ] ,
   ),

    );
  }
}
