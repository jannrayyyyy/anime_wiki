import 'package:flutter/material.dart';
import 'package:info_me_app/features/information_anime_app/data/model/anime_info_model/anime_model.dart';

class AnimeCoverWidget extends StatelessWidget {
  final AnimeModel animeModel;
  const AnimeCoverWidget({Key? key, required this.animeModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          animeModel.imagePath,
          height: 230,
          width: 300,
          fit: BoxFit.fill,
        ),
      )
    ]);
  }
}
