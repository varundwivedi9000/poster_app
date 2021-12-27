import 'package:flutter/material.dart';
import 'package:poster_app/config/constants.dart';
import 'package:poster_app/config/responsive.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(kDefaultPadding / 4),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white70,
          ),
          child: Icon(
            Icons.person,
            size: (Responsive.isDesktop(context)) ? 28 : 30,
            color: Colors.black87,
          ),
        ),
        if (Responsive.isDesktop(context))
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 4,
            ),
          ),
        if (Responsive.isDesktop(context))
          Text(
            "Login/ Register",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.white70),
          ),
      ],
    );
  }
}
