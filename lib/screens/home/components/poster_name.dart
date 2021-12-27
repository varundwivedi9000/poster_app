import 'package:flutter/material.dart';
import 'package:poster_app/config/responsive.dart';

class PosterName extends StatelessWidget {
  const PosterName({
    Key? key,
    required this.data,
  }) : super(key: key);

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data["name"],
      style: (Responsive.isMobile(context))
          ? Theme.of(context).textTheme.headline4?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
          : Theme.of(context).textTheme.headline3?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
    );
  }
}
