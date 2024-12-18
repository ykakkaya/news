import 'package:flutter/material.dart';
import 'package:news/constants/app_color.dart';
import 'package:news/widgets/textWidget/description_text_widget.dart';
import 'package:news/widgets/textWidget/headline_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DescriptionTextWidget(
              text: "Breaking News",
              color: AppColor.kBlack,
              fontWeight: FontWeight.bold,
            ),
            DescriptionTextWidget(text: "Show More", color: AppColor.kBlack)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
            width: double.infinity,
            child: Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/images/openai.jpg')),
              Positioned(
                  left: MediaQuery.of(context).size.width * 0.05,
                  top: MediaQuery.of(context).size.width * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.blue,
                        child: Text(
                          "Bilim-Teknik",
                          style: TextStyle(color: AppColor.kWhite),
                        ),
                      ),
                      HeadText(
                        text: "Yep,'Learning Man'\nis becoming a thing",
                        color: AppColor.kWhite,
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          DescriptionTextWidget(
                            text: "Author:",
                            color: AppColor.kWhite,
                          ),
                          DescriptionTextWidget(
                            text: "Yakup Akkaya",
                            color: AppColor.kWhite,
                          ),
                        ],
                      ),
                    ],
                  ))
            ])),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DescriptionTextWidget(
              text: "Recommended for you",
              color: AppColor.kBlack,
              fontWeight: FontWeight.bold,
            ),
            DescriptionTextWidget(text: "Show More", color: AppColor.kBlack)
          ],
        ),
      ],
    ));
  }
}
