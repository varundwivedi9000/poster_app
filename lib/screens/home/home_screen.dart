import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:poster_app/screens/home/components/image_slider.dart';
import 'package:poster_app/screens/home/components/navbar.dart';
import 'package:poster_app/screens/home/components/slider_dots.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ImageSlider(
              onPageChanged: _onPageChanged,
              carouselController: _carouselController,
            ),
            Positioned.fill(
              child: Column(
                children: [
                  const Navbar(),
                  const Spacer(),
                  SliderDots(
                    currentIndex: _currentIndex,
                    carouselController: _carouselController,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      _currentIndex = index;
    });
  }
}
