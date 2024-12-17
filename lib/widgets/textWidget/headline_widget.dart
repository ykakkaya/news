// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news/constants/app_color.dart';

class HeadText extends StatelessWidget {
  String text;
  Color color;

  HeadText({
    super.key,
    required this.text,
    required this.color,
  
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: Theme.of(context).textTheme.headlineLarge!.fontSize),
    );
  }
}
