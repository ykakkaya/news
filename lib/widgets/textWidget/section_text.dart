import 'package:flutter/material.dart';
import 'package:news/constants/app_color.dart';
import 'package:news/widgets/textWidget/description_text_widget.dart';

class SectionTitle extends StatelessWidget {
  String headtext;

  SectionTitle({
    super.key,
    required this.headtext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DescriptionTextWidget(
          text: headtext,
          color: AppColor.kBlack,
          fontWeight: FontWeight.bold,
        ),
        DescriptionTextWidget(text: "Show More", color: AppColor.kBlack)
      ],
    );
  }
}
