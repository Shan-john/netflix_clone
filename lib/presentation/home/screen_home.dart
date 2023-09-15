import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:netflix_cone/core/constants.dart';

import 'package:netflix_cone/presentation/Widgets/main_title_card.dart';
import 'package:netflix_cone/presentation/home/widget/banner_show_case_area_section1.dart';
import 'package:netflix_cone/presentation/home/widget/home_screen_dynamic_app_bar.dart';


import 'package:netflix_cone/presentation/home/widget/number_card_widget.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollnotifier,
        builder: ((context, value, child) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollnotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollnotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    
                    ListView(
                      children: [
                        
                        section1_banner_show_Case_area(),
                        MainTitleCard(title: "Released in the past year"),
                        kheight,
                        MainTitleCard(title: "Trending Now"),
                        kheight,
                        Main_Number_Card(),
                        kheight,
                        MainTitleCard(title: "Popular"),
                        kheight,
                        MainTitleCard(
                          title: "South India ceima",
                        ),
                        kheight,
                      ],
                    ),
                    scrollnotifier.value
                        ? Home_screen_dynamicappbar()
                        : kheight,
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
