import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:poster_app/config/constants.dart';
import 'package:poster_app/config/responsive.dart';

class SliderDots extends StatelessWidget {
  const SliderDots({
    Key? key,
    required this.currentIndex,
    required this.carouselController,
  }) : super(key: key);

  final int currentIndex;
  final CarouselController carouselController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.black.withOpacity(kOverlayOpacity)],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: posterData
            .asMap()
            .entries
            .map((data) => Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Responsive.isMobile(context)
                          ? kDefaultPadding / 4
                          : kDefaultPadding / 2),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () => carouselController.animateToPage(data.key),
                      child: Container(
                        width: (Responsive.isMobile(context)) ? 8 : 12,
                        height: (Responsive.isMobile(context)) ? 8 : 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (currentIndex == data.key)
                              ? Theme.of(context).primaryColor
                              : Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
