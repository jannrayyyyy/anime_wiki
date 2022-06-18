import 'package:flutter/material.dart';
import 'package:info_me_app/features/information_anime_app/data/model/anime_category_model/trending_desc_model.dart';
import 'package:info_me_app/features/information_anime_app/presentation/widgets/screen_widgets/custom_text_widget.dart';

class TrendingDescWidget extends StatelessWidget {
  final TrendingDescModel trendingdescmodel;
  const TrendingDescWidget({Key? key, required this.trendingdescmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextWidget(
              text: trendingdescmodel.title,
              fontsize: 15,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Wrap(
              children: [
                const CustomTextWidget(text: 'Author: ', fontsize: 12),
                CustomTextWidget(text: trendingdescmodel.author, fontsize: 12)
              ],
            ),
            const SizedBox(height: 10),
            CustomTextWidget(text: trendingdescmodel.releaseDate, fontsize: 12),
            const SizedBox(height: 20),
            CustomTextWidget(text: trendingdescmodel.description, fontsize: 12),
          ],
        ));
  }
}
