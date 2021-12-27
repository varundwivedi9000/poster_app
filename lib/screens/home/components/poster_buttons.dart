import 'package:flutter/material.dart';
import 'package:poster_app/config/constants.dart';
import 'package:poster_app/config/responsive.dart';
import 'package:poster_app/screens/home/components/round_icon_button.dart';

class PosterButtons extends StatelessWidget {
  const PosterButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundIconButton(
          icon: Icons.play_arrow,
          text: "Play Now",
          color: Theme.of(context).primaryColor,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (Responsive.isMobile(context))
                  ? kDefaultPadding / 2
                  : kDefaultPadding),
        ),
        const RoundIconButton(
          icon: Icons.favorite_border,
          text: "Add to list",
          color: Colors.white70,
        ),
      ],
    );
  }
}
