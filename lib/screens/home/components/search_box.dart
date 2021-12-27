import 'package:flutter/material.dart';
import 'package:poster_app/config/constants.dart';
import 'package:poster_app/config/responsive.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Responsive.isDesktop(context))
        ? Container(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white.withOpacity(0.2),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.white70,
                  size: 36,
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
                ),
                Text(
                  "Enter your keywords...",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: Colors.white70),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding * 4),
                ),
              ],
            ),
          )
        : const Icon(
            Icons.search,
            color: Colors.white70,
            size: 42,
          );
  }
}
