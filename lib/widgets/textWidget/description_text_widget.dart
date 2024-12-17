// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news/constants/app_color.dart';

class DescriptionTextWidget extends StatelessWidget {
  String text;
  Color color;
   final FontWeight? fontWeight;

  DescriptionTextWidget({
    super.key,
    required this.text,
    required this.color,
    this.fontWeight, 
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize),
    );
  }
}
