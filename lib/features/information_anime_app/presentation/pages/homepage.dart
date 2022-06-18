import 'package:flutter/material.dart';
import 'package:info_me_app/features/information_anime_app/presentation/pages/firstpage.dart';
import 'package:info_me_app/features/information_anime_app/presentation/pages/secondpage.dart';
import 'package:info_me_app/features/information_anime_app/presentation/widgets/screen_widgets/custom_text_widget.dart';
import 'package:info_me_app/features/information_anime_app/presentation/widgets/screen_widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _screenList = [FirstPage(), const SecondPage()];
  void _onitemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(text: 'INFO\'ME', fontsize: 16),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      endDrawer: const DrawerWidget(),
      body: _screenList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Anime Info',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedFontSize: 14.0,
        unselectedFontSize: 14.0,
        onTap: _onitemTapped,
      ),
    );
  }
}
