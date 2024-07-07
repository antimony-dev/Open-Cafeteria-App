import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Infinite Auto-Scrolling Image Carousel Card'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageCarouselCard(),
          ),
        ),
      ),
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

    // Initialize imageUrls based on the day of the week
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Card Tapped!')),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            height: 250,
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
        ),
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
