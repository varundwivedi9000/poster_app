import 'package:flutter/material.dart';
import 'package:poster_app/config/constants.dart';
import 'package:poster_app/config/responsive.dart';

class PosterRating extends StatelessWidget {
  const PosterRating({
    Key? key,
    required this.data,
  }) : super(key: key);

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: (Responsive.isMobile(context)) ? 18 : null,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 4,
          ),
          child: Text(
            "${data["rating"].toStringAsFixed(2)}",
            style: (Responsive.isMobile(context))
                ? Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Colors.white)
                : Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.white),
          ),
        )
      ],
    );
  }
}
