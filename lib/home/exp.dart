// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:oc/home/home_kitchen.dart';


// List of Cards with color and icon
List<Widget> _listTile = <Widget>[
  BackGroundTile( text: "Home",
    img: 'assets/images/special.jpeg',
  
  ),
  BackGroundTile( text: "AC Unit",img: 'assets/images/special.jpeg',),
  BackGroundTile( text: "Landscape",
    img: 'assets/images/special.jpeg',
  ),
  BackGroundTile( text: "Portrait",
    img: 'assets/images/special.jpeg',
  ),
  BackGroundTile( text: "Music",
    img: 'assets/images/special.jpeg',
  ),
  BackGroundTile( text: "Alarms",
    img: 'assets/images/special.jpeg',
  ),
  BackGroundTile( text: "Satellite",
    img: 'assets/images/special.jpeg',
  ),
  BackGroundTile( text: "Search",
    img: 'assets/images/special.jpeg',
  ),
  BackGroundTile( text: "Adjust",
    img: 'assets/images/special.jpeg',
  ),
  BackGroundTile( text: "Money",
    img: 'assets/images/special.jpeg',
  ),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GFG App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: _cardTile,
          ),
        ),
      ),
    );
  }
}

// List of Cards with size
List<Widget> _cardTile = <Widget>[
  StaggeredGridTile.count(
      crossAxisCellCount: 4, mainAxisCellCount: 3, child: _listTile[0]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 2, child: _listTile[1]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 3, child: _listTile[2]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 2, child: _listTile[3]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 3, child: _listTile[4]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 2, child: _listTile[5]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 3, child: _listTile[6]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 2, child: _listTile[7]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 3, child: _listTile[8]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 2, child: _listTile[9]),
];

class BackGroundTile extends StatelessWidget {
  final String text;
  final String img;

  const BackGroundTile({ required this.text,required this . img});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black,
      child: InkWell(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => home_kitchen())),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.amberAccent,
              width: 2.0,
            ),
            image: DecorationImage(
              image: AssetImage(img),
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
                text,
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
    );
  }
}
