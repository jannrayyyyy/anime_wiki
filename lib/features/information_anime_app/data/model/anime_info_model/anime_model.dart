import 'package:info_me_app/features/information_anime_app/data/model/anime_info_model/character_model.dart';

class AnimeModel {
  final String imagePath;
  final List<CharacterModel> charModel;

  AnimeModel({
    required this.imagePath,
    required this.charModel,
  });
}
