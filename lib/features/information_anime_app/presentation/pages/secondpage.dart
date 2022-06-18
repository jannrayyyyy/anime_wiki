import 'package:flutter/material.dart';
import 'package:info_me_app/features/information_anime_app/data/datasource/anime_info_data/anime_data.dart';
import 'package:info_me_app/features/information_anime_app/presentation/widgets/second_screen_component/anime_character.dart';
import 'package:info_me_app/features/information_anime_app/presentation/widgets/second_screen_component/anime_cover.dart';
import 'package:info_me_app/features/information_anime_app/presentation/widgets/second_screen_component/anime_details.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnimeData animeData = AnimeData();
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 40),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 75,
            children: animeData.animeList.map((e) {
              return InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return ListView(
                            children: e.charModel.map((e) {
                              return InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                              padding: const EdgeInsets.all(10),
                                              child: Wrap(
                                                children: e.details.map((e) {
                                                  return SizedBox(
                                                    height: 300,
                                                    child: ListView(children: [
                                                      AnimeDescWidget(
                                                          detailModel: e)
                                                    ]),
                                                  );
                                                }).toList(),
                                              ));
                                        });
                                  },
                                  child: AnimeCharWidget(charactermodel: e));
                            }).toList(),
                          );
                        });
                  },
                  child: AnimeCoverWidget(animeModel: e));
            }).toList(),
          ),
        ),
      ],
    );
  }
}
