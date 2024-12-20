import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news/constants/app_color.dart';
import 'package:news/controllers/news_api_controller.dart';
import 'package:news/widgets/textWidget/description_text_widget.dart';
import 'package:news/widgets/textWidget/headline_widget.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getNews = ref.watch(newsControllerProvider);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
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
          getNews.when(
              data: (articles) => ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: articles.length,
                  itemBuilder: (context, index) => Card(
                        child: Expanded(
                          child: Row(
                            children: [
                              Image.network(
                                articles[index].urlToImage ??
                                    "https://avatars.mds.yandex.net/i?id=723191c0eebd9977d60900db2820bc20a4c28203-11922523-images-thumbs&n=13",
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    HeadText(
                                      text: articles[index].title ?? "Title",
                                      color: AppColor.kBlack,
                                    ),
                                    DescriptionTextWidget(
                                      text: articles[index].author ?? "Author",
                                      color: AppColor.kBlack,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
              error: (error, stackTrace) => Text("error"),
              loading: () => Center(child: CircularProgressIndicator())),
        ],
      ),
    ));
  }
}
