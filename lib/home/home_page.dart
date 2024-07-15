import 'dart:io';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:flutter/material.dart';
import 'package:oc/home/home_bakery.dart';
import 'package:oc/home/home_coldrinks.dart';
import 'package:oc/home/home_hotdrinks.dart';
import 'package:oc/home/home_ice.dart';
import 'package:oc/home/home_kitchen.dart';
import 'package:oc/home/home_ready.dart';
import 'package:oc/home/home_special.dart';
import 'package:oc/item_screens/colddrinks/appy.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (value) {},
        color: Colors.redAccent,
        backgroundColor: Colors.black,
        height: 50,
        buttonBackgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(Icons.home_rounded
          ,color: Colors.black),

          Icon(Icons.favorite
          , color: Colors.black),
          Icon(Icons.bookmark
          , color: Colors.black),
        ],
      ),
      backgroundColor: Colors.black,
      drawer: _buildDrawer(context),
      appBar: AppBar(
        title: Text(
          "           OPEN CAFETERIA",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 25, left: 17, right: 17, bottom: 17),
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 12.0,
            crossAxisSpacing: 10.0,
            children: _cardTile,
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.redAccent,
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "Welcome 'user' ",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            _buildDrawerItem(context, "SPECIAL", home_special()),
            Divider(color: Colors.white),
            _buildDrawerItem(context, "BAKERY", home_bakery()),
            Divider(color: Colors.white),
            _buildDrawerItem(context, "HOT DRINKS", home_hotdrinks()),
            Divider(color: Colors.white),
            _buildDrawerItem(context, "COLD DRINKS", home_coldrinks()),
            Divider(color: Colors.white),
            _buildDrawerItem(context, "KITCHEN MADE", home_kitchen()),
            Divider(color: Colors.white),
            _buildDrawerItem(context, "READY MADE", home_ready()),
            Divider(color: Colors.white),
            _buildDrawerItem(context, "ICECREAM", home_ice()),
            Divider(color: Colors.white),
            ListTile(
              hoverColor: Colors.blue,
              leading: Icon(Icons.logout_rounded),
              title: Text(
                "LOGOUT",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => FlutterExitApp.exitApp(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(''),
                Text(''),
                Text(''),
                Text(''),
                Text(''),
                Text(
                  'Made by : Shashwat , Kartikeya and Shivam',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, String title, Widget page) {
    return ListTile(
      hoverColor: Colors.blue,
      leading: Icon(Icons.all_inclusive_rounded),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => page)),
    );
  }
}

class ImageCarouselCard extends StatefulWidget {
  @override
  _ImageCarouselCardState createState() => _ImageCarouselCardState();
}

class _ImageCarouselCardState extends State<ImageCarouselCard> {
  late List<String> imageUrls;
  final PageController _pageController = PageController(initialPage: 1);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _initializeImageUrls();
    _pageController.addListener(() {
      int currentPage = _pageController.page!.round();
      if (currentPage == 0) {
        _pageController.jumpToPage(imageUrls.length);
      } else if (currentPage == imageUrls.length + 1) {
        _pageController.jumpToPage(1);
      }
    });
    _startAutoScroll();
  }

  void _initializeImageUrls() {
    final dayOfWeek = DateFormat('EEEE').format(DateTime.now());
    final allImages = {
      'Monday': [
        'https://via.placeholder.com/300x200.png?text=Monday+1',
        'https://via.placeholder.com/300x200.png?text=Monday+2',
        'https://via.placeholder.com/300x200.png?text=Monday+3',
      ],
      'Tuesday': [
        'https://via.placeholder.com/300x200.png?text=Tuesday+1',
        'https://via.placeholder.com/300x200.png?text=Tuesday+2',
        'https://via.placeholder.com/300x200.png?text=Tuesday+3',
      ],
      'Wednesday': [
        'https://via.placeholder.com/300x200.png?text=Wednesday+1',
        'https://via.placeholder.com/300x200.png?text=Wednesday+2',
        'https://via.placeholder.com/300x200.png?text=Wednesday+3',
      ],
      'Thursday': [
        'https://via.placeholder.com/300x200.png?text=Thursday+1',
        'https://via.placeholder.com/300x200.png?text=Thursday+2',
        'https://via.placeholder.com/300x200.png?text=Thursday+3',
      ],
      'Friday': [
        'https://via.placeholder.com/300x200.png?text=Friday+1',
        'https://via.placeholder.com/300x200.png?text=Friday+2',
        'https://via.placeholder.com/300x200.png?text=Friday+3',
      ],
      'Saturday': [
        'https://via.placeholder.com/300x200.png?text=Saturday+1',
        'https://via.placeholder.com/300x200.png?text=Saturday+2',
        'https://via.placeholder.com/300x200.png?text=Saturday+3',
      ],
      'Sunday': [
        'https://via.placeholder.com/300x200.png?text=Sunday+1',
        'https://via.placeholder.com/300x200.png?text=Sunday+2',
        'https://via.placeholder.com/300x200.png?text=Sunday+3',
      ],
    };
    imageUrls = allImages[dayOfWeek]!;
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      int nextPage = _pageController.page!.round() + 1;
      _pageController.animateToPage(
        nextPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  void _navigateToPage(BuildContext context) {
    final dayOfWeek = DateFormat('EEEE').format(DateTime.now());
    final pageMap = {
      'Monday': monday(),
      'Tuesday': tuesday(),
      'Wednesday': wednesday(),
      'Thursday': thursday(),
      'Friday': friday(),
      'Saturday': saturday(),
      'Sunday': sunday(),
    };
    final targetPage = pageMap[dayOfWeek]!;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => targetPage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToPage(context),
      child: Stack(
        children: [
          Card(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Column(
                children: [
                  Container(
                    height: 270,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: imageUrls.length + 2,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Image.network(
                            imageUrls[imageUrls.length - 1],
                            fit: BoxFit.cover,
                          );
                        } else if (index == imageUrls.length + 1) {
                          return Image.network(
                            imageUrls[0],
                            fit: BoxFit.cover,
                          );
                        } else {
                          return Image.network(
                            imageUrls[index - 1],
                            fit: BoxFit.cover,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: imageUrls.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.orangeAccent,
                  dotColor: Colors.grey,
                  dotHeight: 8.0,
                  dotWidth: 8.0,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "TODAY'S SPECIAL",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }
}

List<Widget> _cardTile = <Widget>[
  StaggeredGridTile.count(
      crossAxisCellCount: 4, mainAxisCellCount: 3, child: _listTile[0]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 2.3, child: _listTile[1]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 2.3, child: _listTile[2]),
  StaggeredGridTile.count(
      crossAxisCellCount: 4, mainAxisCellCount: 2, child: _listTile[3]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 2.3, child: _listTile[4]),
  StaggeredGridTile.count(
      crossAxisCellCount: 2, mainAxisCellCount: 2.3, child: _listTile[5]),
  StaggeredGridTile.count(
      crossAxisCellCount: 3, mainAxisCellCount: 2, child: _listTile[6]),
];

List<Widget> _listTile = <Widget>[
  ImageCarouselCard(),
  BackGroundTile(
    text: "COLD DRINKS",
    img: 'assets/images/coldrink.jpeg',
    pages: home_coldrinks(),
  ),
  BackGroundTile(
    text: "HOT DRINKS",
    img: 'assets/images/hotdrink.jpeg',
    pages: home_hotdrinks(),
  ),
  BackGroundTile(
    text: "BAKERY",
    img: 'assets/images/burger.jpeg',
    pages: home_bakery(),
  ),
  BackGroundTile(
    text: "READY MADE",
    img: 'assets/images/ready.jpeg',
    pages: home_ready(),
  ),
  BackGroundTile(
    text: "ICECREAM",
    img: 'assets/images/icecream.jpeg',
    pages: home_ice(),
  ),
  BackGroundTile(
    text: "KITCHEN MADE",
    img: 'assets/images/kitchen.jpeg',
    pages: home_kitchen(),
  ),
];

class BackGroundTile extends StatelessWidget {
  final String text;
  final String img;
  final Widget pages;
  const BackGroundTile(
      {required this.text, required this.img, required this.pages});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black,
      color: Colors.black,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => pages)),
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white30,
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
              borderRadius: BorderRadius.circular(20),
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
      ),
    );
  }
}
