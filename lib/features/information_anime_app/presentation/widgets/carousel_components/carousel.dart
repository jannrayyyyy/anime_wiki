import 'package:flutter/material.dart';
import 'package:info_me_app/features/information_anime_app/data/model/anime_carousel_model/carousel_model.dart';

class CarouselWidget extends StatelessWidget {
  final CarouselModel carouselModel;
  const CarouselWidget({Key? key, required this.carouselModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(carouselModel.imagePath, width: 150, fit: BoxFit.fill),
    );
  }
}
