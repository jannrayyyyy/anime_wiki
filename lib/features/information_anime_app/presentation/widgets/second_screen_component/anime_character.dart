import 'package:flutter/material.dart';
import 'package:info_me_app/features/information_anime_app/data/model/anime_info_model/character_model.dart';

class AnimeCharWidget extends StatelessWidget {
  final CharacterModel charactermodel;
  const AnimeCharWidget({Key? key, required this.charactermodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          child: Image.asset(
            charactermodel.imagePath,
            height: 200,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
