// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:news/constants/app_color.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  String text;
  AppbarWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style: TextStyle(color: AppColor.kWhite),
      ),
      centerTitle: true,
      backgroundColor: AppColor.kAppbarColor,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
