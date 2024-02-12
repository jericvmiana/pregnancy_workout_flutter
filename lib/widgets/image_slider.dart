import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();

  void nextPage() => _ImageSliderState()._pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
}

class _ImageSliderState extends State<ImageSlider> {
  late final PageController _pageController;

  final List<String> imageUrls = [
    'assets/images/exercise_1.png',
    'assets/images/exercise_1.png',
    'assets/images/exercise_1.png',
    'assets/images/exercise_1.png',
    'assets/images/exercise_1.png',
  ];

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (next != _currentPage) {
        setState(() {
          _currentPage = next;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            imageUrls.length,
            (index) => buildIndicator(index),
          ),
        ),
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Biceps Curl With Dumbbells",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildIndicator(int index) {
    return Container(
      width: 40,
      height: 5,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: _currentPage == index ? Colors.black : Colors.grey[400],
      ),
    );
  }

  void nextPage() {
    if (_pageController.hasClients) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
