// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        style: GoogleFonts.spaceGrotesk(color: AppColor.kWhite),
      ),
      centerTitle: true,
      backgroundColor: AppColor.kAppbarColor,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            color: AppColor.kWhite,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: AppColor.kWhite,
          ),
        ),
      ],
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: Icon(
          Icons.menu,
          color: AppColor.kWhite,
        ),
      )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
