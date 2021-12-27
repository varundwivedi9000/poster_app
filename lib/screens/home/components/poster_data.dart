import 'package:flutter/material.dart';
import 'package:poster_app/config/constants.dart';
import 'package:poster_app/config/responsive.dart';
import 'package:poster_app/screens/home/components/poster_buttons.dart';
import 'package:poster_app/screens/home/components/poster_data_attributes.dart';
import 'package:poster_app/screens/home/components/poster_details.dart';
import 'package:poster_app/screens/home/components/poster_name.dart';

class PosterData extends StatelessWidget {
  const PosterData({
    Key? key,
    required this.data,
  }) : super(key: key);

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      left: 0,
      right: 0,
      bottom: kToolbarHeight,
      child: Container(
        color: Colors.black.withOpacity(kOverlayOpacity),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (Responsive.isDesktop(context))
                      ? kDefaultPadding
                      : kDefaultPadding / 2),
            ),
            SizedBox(
              width: (Responsive.isDesktop(context))
                  ? MediaQuery.of(context).size.width * 0.75
                  : MediaQuery.of(context).size.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  PosterName(
                    data: data,
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                  ),
                  PosterDataAttributes(data: data),
                  if (!Responsive.isMobile(context))
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    ),
                  if (!Responsive.isMobile(context)) PosterDetails(data: data),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: (Responsive.isMobile(context))
                            ? kDefaultPadding / 2
                            : kDefaultPadding),
                  ),
                  const PosterButtons(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (Responsive.isDesktop(context))
                      ? kDefaultPadding
                      : kDefaultPadding / 2),
            ),
          ],
        ),
      ),
    );
  }
}
