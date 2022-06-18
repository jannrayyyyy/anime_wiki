import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:info_me_app/features/information_anime_app/data/datasource/anime_carousel_data/carousel_data.dart';
import 'package:info_me_app/features/information_anime_app/data/datasource/anime_category_data/trending_data.dart';
import 'package:info_me_app/features/information_anime_app/presentation/widgets/anime_trending/trending_cover.dart';
import 'package:info_me_app/features/information_anime_app/presentation/widgets/anime_trending/trending_desc.dart';
import 'package:info_me_app/features/information_anime_app/presentation/widgets/carousel_components/carousel.dart';
import 'package:info_me_app/features/information_anime_app/presentation/widgets/screen_widgets/custom_text_widget.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  bool isShowModal = true;
  @override
  Widget build(BuildContext context) {
    CarouselData carouselData = CarouselData();
    TrendingData trendingData = TrendingData();
    return ListView(children: [
      Column(
        children: [
          const SizedBox(height: 85),
          CarouselSlider(
            items: carouselData.carouselImages.map((e) {
              return CarouselWidget(carouselModel: e);
            }).toList(),
            options: CarouselOptions(
              height: 230,
              aspectRatio: 16 / 9,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.40,
            ),
          ),
          const SizedBox(height: 80),
          Container(
              margin: const EdgeInsets.only(left: 5, bottom: 5),
              alignment: Alignment.centerLeft,
              child: const CustomTextWidget(
                text: 'Recommended',
                fontsize: 16,
                fontWeight: FontWeight.w600,
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              children: trendingData.trendingList.map((e) {
                return InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                                height: 400,
                                child: ListView(
                                  children: e.descModel.map((e) {
                                    return TrendingDescWidget(
                                        trendingdescmodel: e);
                                  }).toList(),
                                ));
                          });
                    },
                    child: TrendingWidget(trendingModel: e));
              }).toList(),
            ),
          ),
          const SizedBox(height: 80),
          Container(
              margin: const EdgeInsets.only(left: 5, bottom: 5),
              alignment: Alignment.centerLeft,
              child: const CustomTextWidget(
                text: 'NEW RELEASE',
                fontsize: 16,
                fontWeight: FontWeight.w600,
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              children: trendingData.trendingList.map((e) {
                return InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                                height: 400,
                                child: ListView(
                                  children: e.descModel.map((e) {
                                    return TrendingDescWidget(
                                        trendingdescmodel: e);
                                  }).toList(),
                                ));
                          });
                    },
                    child: TrendingWidget(trendingModel: e));
              }).toList(),
            ),
          )
        ],
      )
    ]);
  }
}
