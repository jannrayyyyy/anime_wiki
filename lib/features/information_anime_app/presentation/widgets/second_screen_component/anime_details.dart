import 'package:flutter/material.dart';
import 'package:info_me_app/features/information_anime_app/data/model/anime_info_model/details_model.dart';
import 'package:info_me_app/features/information_anime_app/presentation/widgets/screen_widgets/custom_text_widget.dart';

class AnimeDescWidget extends StatelessWidget {
  final DetailModel detailModel;
  const AnimeDescWidget({Key? key, required this.detailModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 60),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomTextWidget(
            text: detailModel.name,
            textAlign: TextAlign.center,
            fontsize: 16,
          ),
          const SizedBox(height: 30),
          CustomTextWidget(
            text: detailModel.description,
            fontsize: 12,
          ),
        ],
      ),
    );
  }
}
