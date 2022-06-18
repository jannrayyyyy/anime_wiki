import 'package:info_me_app/features/information_anime_app/data/model/anime_category_model/trending_desc_model.dart';

class TrendingModel {
  final String imagePath;
  final List<TrendingDescModel> descModel;

  TrendingModel({
    required this.imagePath,
    required this.descModel,
  });
}
