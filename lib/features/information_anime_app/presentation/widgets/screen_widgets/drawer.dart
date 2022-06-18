import 'package:flutter/material.dart';
import 'package:info_me_app/features/information_anime_app/core/utils/random.dart';
import 'package:info_me_app/features/information_anime_app/presentation/widgets/screen_widgets/custom_text_widget.dart';
import 'package:info_me_app/main.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool isAboutOnTap = false;
  bool isFavOnTap = false;
  bool defaultLight = false;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(200)),
      child: Drawer(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  MyApp.themeNotifier.value =
                      MyApp.themeNotifier.value == ThemeMode.light
                          ? ThemeMode.dark
                          : ThemeMode.light;

                  setState(() {
                    defaultLight = !defaultLight;
                  });
                },
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          MyApp.themeNotifier.value == ThemeMode.light
                              ? Icons.dark_mode
                              : Icons.dark_mode_sharp,
                        ),
                        const SizedBox(width: 10),
                        defaultLight
                            ? const Text('Light Mode')
                            : const Text('Dark Mode')
                      ],
                    )),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      //fav
                      setState(() {
                        isFavOnTap = !isFavOnTap;
                        if (isAboutOnTap == true) {
                          isAboutOnTap = false;
                        }
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            isFavOnTap
                                ? Row(
                                    children: const [
                                      Icon(Icons.favorite,
                                          color: Colors.redAccent),
                                      SizedBox(width: 10),
                                      Text('Favorite'),
                                    ],
                                  )
                                : Row(
                                    children: const [
                                      Icon(Icons.favorite),
                                      SizedBox(width: 10),
                                      Text('Favorite'),
                                    ],
                                  )
                          ],
                        )),
                  ),
                  isFavOnTap
                      ? Container(
                          padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: const CustomTextWidget(
                              text: 'Favorite anime list is empty!',
                              fontsize: 12,
                            ),
                          ),
                        )
                      : const SizedBox.shrink()
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      //about
                      setState(() {
                        isAboutOnTap = !isAboutOnTap;
                        if (isFavOnTap) {
                          isFavOnTap = false;
                        }
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.info,
                              color: Colors.deepOrange,
                            ),
                            SizedBox(width: 10),
                            Text('About'),
                          ],
                        )),
                  ),
                  isAboutOnTap
                      ? Container(
                          padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                          child: Wrap(
                            children: [
                              const SizedBox(height: 10),
                              Container(
                                alignment: Alignment.topLeft,
                                child: CustomTextWidget(
                                  text: aboutDeveloper,
                                  fontsize: 12,
                                ),
                              ),
                            ],
                          ))
                      : const SizedBox.shrink()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
