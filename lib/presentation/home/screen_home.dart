import 'package:flutter/material.dart';

import 'package:netflix_cone/core/colors/Colors.dart';

import 'package:netflix_cone/core/constants.dart';

import 'package:netflix_cone/presentation/Widgets/main_title_card.dart';

import 'package:netflix_cone/presentation/home/widget/number_card_widget.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _section1_banner_show_Case_area(),
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
      ),
    ));
  }

  Stack _section1_banner_show_Case_area() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(dumoy2))),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _horizontal_Icon_Text_button(icon: Icons.add, text: "My List"),
              _Playbutton(),
              _horizontal_Icon_Text_button(icon: Icons.info_outline, text: "InFo"),
            ],
          ),
        )
      ],
    );
  }

  Column _horizontal_Icon_Text_button(
      {required IconData icon, required String text}) {
    return Column(
      children: [
        Icon(
          icon,
          color: colorswhite,
          size: 30,
        ),
        Text(
          text,
          style: TextStyle(color: colorswhite, fontSize: 20),
        )
      ],
    );
  }

  TextButton _Playbutton() {
    return TextButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colorswhite)),
        onPressed: () {},
        icon: Icon(
          Icons.play_arrow,
          size: 30,
          color: colorblack,
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "add",
            style: TextStyle(fontSize: 20, color: colorblack),
          ),
        ));
  }
}
