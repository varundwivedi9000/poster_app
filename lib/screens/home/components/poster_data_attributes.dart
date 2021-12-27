import 'package:flutter/material.dart';
import 'package:poster_app/config/constants.dart';
import 'package:poster_app/config/responsive.dart';
import 'package:poster_app/screens/home/components/hd_card.dart';
import 'package:poster_app/screens/home/components/poster_rating.dart';

class PosterDataAttributes extends StatelessWidget {
  const PosterDataAttributes({
    Key? key,
    required this.data,
  }) : super(key: key);

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const HDCard(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (Responsive.isDesktop(context))
                      ? kDefaultPadding
                      : kDefaultPadding / 2),
            ),
            PosterRating(data: data),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (Responsive.isDesktop(context))
                      ? kDefaultPadding
                      : kDefaultPadding / 2),
            ),
            Text(
              data["length"],
              style: (Responsive.isMobile(context))
                  ? Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.white70)
                  : Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.white70),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (Responsive.isDesktop(context))
                      ? kDefaultPadding
                      : kDefaultPadding / 2),
            ),
            if (!Responsive.isMobile(context))
              Text(
                data["genre"],
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.white70),
              ),
          ],
        ),
        if (Responsive.isMobile(context))
          const Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          ),
        if (Responsive.isMobile(context))
          Text(
            data["genre"],
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.white70),
          ),
      ],
    );
  }
}
