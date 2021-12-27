import 'package:flutter/material.dart';
import 'package:poster_app/config/constants.dart';
import 'package:poster_app/config/responsive.dart';

class HDCard extends StatelessWidget {
  const HDCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: (Responsive.isMobile(context))
            ? kDefaultPadding / 4
            : kDefaultPadding / 2,
        vertical: (Responsive.isMobile(context))
            ? kDefaultPadding / 8
            : kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(kDefaultPadding / 4),
      ),
      child: Text(
        "HD",
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
