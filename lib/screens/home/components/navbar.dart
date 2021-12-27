import 'package:flutter/material.dart';
import 'package:poster_app/config/constants.dart';
import 'package:poster_app/config/responsive.dart';
import 'package:poster_app/screens/home/components/login_button.dart';
import 'package:poster_app/screens/home/components/navbar_brand.dart';
import 'package:poster_app/screens/home/components/search_box.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.black.withOpacity(kOverlayOpacity)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (Responsive.isDesktop(context))
                    ? kDefaultPadding
                    : kDefaultPadding / 2),
          ),
          Icon(
            Icons.menu,
            color: Colors.white70,
            size: (Responsive.isMobile(context)) ? 36 : 42,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          ),
          const NavbarBrand(),
          const Spacer(),
          if (!Responsive.isMobile(context)) const SearchBox(),
          if (!Responsive.isMobile(context))
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (Responsive.isDesktop(context))
                      ? kDefaultPadding
                      : kDefaultPadding / 2),
            ),
          if (!Responsive.isMobile(context)) const LoginButton(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (Responsive.isDesktop(context))
                    ? kDefaultPadding
                    : kDefaultPadding / 2),
          ),
        ],
      ),
    );
  }
}
