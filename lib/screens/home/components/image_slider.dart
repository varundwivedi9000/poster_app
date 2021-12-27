import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:poster_app/config/constants.dart';
import 'package:poster_app/config/responsive.dart';
import 'package:poster_app/screens/home/components/poster_data.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    Key? key,
    required this.onPageChanged,
    required this.carouselController,
  }) : super(key: key);

  final Function(int index, CarouselPageChangedReason reason)? onPageChanged;
  final CarouselController carouselController;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: carouselController,
      items: posterData
          .map((data) => Stack(
                children: [
                  if (Responsive.isMobile(context))
                    Column(
                      children: [
                        Image.asset(
                          data["image"],
                          height: MediaQuery.of(context).size.height * 0.65,
                          width: double.infinity,
                          alignment: Alignment.topCenter,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.black.withOpacity(kOverlayOpacity),
                          ),
                        ),
                      ],
                    ),
                  if (!Responsive.isMobile(context))
                    Image.asset(
                      data["image"],
                      height: double.infinity,
                      width: double.infinity,
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,
                    ),
                  PosterData(data: data),
                ],
              ))
          .toList(),
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 8),
        height: double.infinity,
        viewportFraction: 1,
        enableInfiniteScroll: false,
        onPageChanged: onPageChanged,
      ),
    );
  }
}
