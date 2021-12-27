import 'package:flutter/material.dart';
import 'package:poster_app/config/constants.dart';
import 'package:poster_app/config/responsive.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: (Responsive.isMobile(context))
            ? kDefaultPadding / 2
            : kDefaultPadding,
        vertical: (Responsive.isMobile(context))
            ? kDefaultPadding / 4
            : kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        border: Border.all(
          color: color,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Wrap(
        children: [
          Icon(
            icon,
            color: color,
            size: (!Responsive.isMobile(context)) ? 30 : null,
          ),
          Text(
            text,
            style: (Responsive.isMobile(context))
                ? Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: color,
                    )
                : Theme.of(context).textTheme.headline6?.copyWith(
                      color: color,
                    ),
          ),
        ],
      ),
    );
  }
}
