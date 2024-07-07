// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:oc/item_screens/colddrinks/appy.dart';



class home_ice extends StatelessWidget {
  const home_ice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        

        appBar: AppBar(
          leading: BackButton(),
      title: Text("ICECREAMS",
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
            crossAxisCount: 1,
            mainAxisExtent:150.0,
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => appy())),
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
        MaterialPageRoute(builder: (context) => appy()
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
        MaterialPageRoute(builder: (context) => appy()
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
        MaterialPageRoute(builder: (context) => appy()
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
        MaterialPageRoute(builder: (context) => appy()
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
        MaterialPageRoute(builder: (context) => appy()
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
        MaterialPageRoute(builder: (context) => appy()
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


// import 'package:flutter/material.dart';
// import 'dart:async';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Infinite Auto-Scrolling Image Carousel Card'),
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ImageCarouselCard(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ImageCarouselCard extends StatefulWidget {
//   @override
//   _ImageCarouselCardState createState() => _ImageCarouselCardState();
// }

// class _ImageCarouselCardState extends State<ImageCarouselCard> {
//   final List<String> imageUrls = [
//     'https://via.placeholder.com/300x200.png?text=Image+1',
//     'https://via.placeholder.com/300x200.png?text=Image+2',
//     'https://via.placeholder.com/300x200.png?text=Image+3',
//   ];

//   final PageController _pageController = PageController(initialPage: 1);
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();

//     _pageController.addListener(() {
//       int currentPage = _pageController.page!.round();
//       if (currentPage == 0) {
//         _pageController.jumpToPage(imageUrls.length);
//       } else if (currentPage == imageUrls.length + 1) {
//         _pageController.jumpToPage(1);
//       }
//     });

//     _startAutoScroll();
//   }

//   void _startAutoScroll() {
//     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
//       int nextPage = _pageController.page!.round() + 1;
//       _pageController.animateToPage(
//         nextPage,
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15.0),
//       ),
//       elevation: 5,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(15.0),
//         child: Container(
//           height: 250,
//           child: PageView.builder(
//             controller: _pageController,
//             itemCount: imageUrls.length + 2,
//             itemBuilder: (context, index) {
//               if (index == 0) {
//                 return Image.network(
//                   imageUrls[imageUrls.length - 1],
//                   fit: BoxFit.cover,
//                 );
//               } else if (index == imageUrls.length + 1) {
//                 return Image.network(
//                   imageUrls[0],
//                   fit: BoxFit.cover,
//                 );
//               } else {
//                 return Image.network(
//                   imageUrls[index - 1],
//                   fit: BoxFit.cover,
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _pageController.dispose();
//     super.dispose();
//   }
// }
