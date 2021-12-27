import 'package:flutter/material.dart';
import 'package:poster_app/config/constants.dart';
import 'package:poster_app/config/responsive.dart';

class NavbarBrand extends StatelessWidget {
  const NavbarBrand({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(kDefaultPadding / 4),
      ),
      child: Text(
        "KMOVIES",
        style: (Responsive.isMobile(context))
            ? Theme.of(context).textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )
            : Theme.of(context).textTheme.headline4?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
      ),
    );
  }
}
