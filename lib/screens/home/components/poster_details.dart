import 'package:flutter/material.dart';

class PosterDetails extends StatelessWidget {
  const PosterDetails({
    Key? key,
    required this.data,
  }) : super(key: key);

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data["details"],
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: Colors.white70),
    );
  }
}
