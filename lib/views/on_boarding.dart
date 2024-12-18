import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/constants/app_color.dart';
import 'package:news/constants/app_sizes.dart';
import 'package:news/constants/app_text.dart';
import 'package:news/views/base_view.dart';
import 'package:news/widgets/textWidget/description_text_widget.dart';
import 'package:news/widgets/textWidget/headline_widget.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/reporter.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: [0.2, 0.7],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 100, 100, 100).withOpacity(0.2),
                  Colors.black.withOpacity(0.9),
                ]),
          ),
          child: Column(
            spacing: AppSizes.kOnBoardSpacing,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
              ),
              HeadText(
                text: AppText.onBoardHeadText,
                color: AppColor.kWhite,
              ),
              DescriptionTextWidget(
                text: AppText.onBoardDescriptionText,
                color: AppColor.kWhite,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.kButtonColor),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => BaseView()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Center(
                          child: Text(
                        AppText.onBoardButtonText,
                        style: GoogleFonts.spaceGrotesk(
                            color: AppColor.kWhite,
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .fontSize),
                      ))))
            ],
          ),
        ),
      ),
    );
  }
}
