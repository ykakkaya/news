import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news/constants/app_color.dart';
import 'package:news/constants/app_sizes.dart';
import 'package:news/constants/app_text.dart';
import 'package:news/controllers/bottom_navbar_index.dart';
import 'package:news/views/home_view.dart';
import 'package:news/views/settings_view.dart';
import 'package:news/widgets/appbar_widget.dart';

class BaseView extends ConsumerWidget {
  const BaseView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget bodyPage(value) {
      switch (value) {
        case 0:
          return HomeView();
        case 1:
          return SettingsView();
        default:
          return HomeView();
      }
    }

    String appBarText(value) {
      switch (value) {
        case 0:
          return AppText.homeText;
        case 1:
          return AppText.settingsText;
        default:
          return AppText.homeText;
      }
    }

    return Scaffold(
        appBar: AppbarWidget(text: appBarText(ref.watch(indexProvider))),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: ref.watch(indexProvider),
          selectedItemColor: AppColor.kWhite,
          unselectedItemColor: AppColor.kGrey,
          onTap: (value) {
            ref.read(indexProvider.notifier).state = value;
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: AppText.homeText),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: AppText.settingsText)
          ],
          backgroundColor: AppColor.kAppbarColor,
        ),
        drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(AppSizes.kPadding),
          child: bodyPage(ref.watch(indexProvider)),
        ));
  }
}
