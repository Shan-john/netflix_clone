import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_cone/core/colors/Colors.dart';
import 'package:netflix_cone/core/constants.dart';
import 'package:netflix_cone/presentation/New_and_hots/widgets/coming_soon_Widget.dart';
import 'package:netflix_cone/presentation/New_and_hots/widgets/everyones_Watching_widget.dart';
import 'package:netflix_cone/presentation/Widgets/app_bar_Widget.dart';
import 'package:netflix_cone/presentation/home/widget/banner_show_case_area_section1.dart';

class ScreenNewsAndHot extends StatelessWidget {
  const ScreenNewsAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      animationDuration: Duration(milliseconds: 460),
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBarWideget(
              title: "New & Hot",
              bottom: TabBar(
                  unselectedLabelColor: colorswhite,
                  labelColor: colorblack,
                  indicator: BoxDecoration(
                    color: colorswhite,
                    borderRadius: Tabborderradius,
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        width: 250,
                        child: const Center(
                            child: Text(
                          "🍿 Coming soon",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        )),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 250,
                        child: Center(
                            child: Text(
                          textAlign: TextAlign.start,
                          "👀 Everyone's watching",
                          style: TextStyle(fontSize: 17),
                        )),
                      ),
                    ),
                  ]),
            ),
          ),
          body: TabBarView(
            children: [
              _BuildComingSoon(),
              _BuildEveryonswatching(),
            ],
          )),
    );
  }
}

_BuildComingSoon() {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: 10,
    itemBuilder: (context, index) {
      return Coming_Soon_Widget();
    },
  );
}

_BuildEveryonswatching() {
  return ListView.builder(
    itemCount: 3,
    itemBuilder: (context, index) {
    return EveryonesWatchingWidget();
  });
}
