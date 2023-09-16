import 'package:flutter/material.dart';
import 'package:netflix_cone/presentation/New_and_hots/screen_new_and_hot.dart';
import 'package:netflix_cone/presentation/downloads/screen_download.dart';
import 'package:netflix_cone/presentation/fast_laught/Screen_fast_laught.dart';
import 'package:netflix_cone/presentation/home/screen_home.dart';
import 'package:netflix_cone/presentation/mainpage/widgets/botton_nav.dart';
import 'package:netflix_cone/presentation/search/Screen_search.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final pages = [
     ScreenHomePage(),
    ScreenNewsAndHot(),
   Screenfastlaught(),
    ScreenSearch(),
    ScreenDownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, index, _) {
          return pages[index];
        },
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
