import 'package:flutter/material.dart';
import 'package:info_me_app/features/information_anime_app/data/model/anime_category_model/trending_model.dart';

class TrendingWidget extends StatelessWidget {
  final TrendingModel trendingModel;
  const TrendingWidget({Key? key, required this.trendingModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(2),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    trendingModel.imagePath,
                    height: 200,
                    fit: BoxFit.fill,
                  )),
            )
          ],
        ),
      ],
    );
  }
}
