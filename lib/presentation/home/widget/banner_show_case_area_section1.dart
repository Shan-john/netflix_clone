
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_cone/core/colors/Colors.dart';
import 'package:netflix_cone/core/constants.dart';

Stack section1_banner_show_Case_area() {
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
              horizontal_Icon_Text_button(icon: Icons.add, text: "My List"),
              _Playbutton(),
              horizontal_Icon_Text_button(
                  icon: Icons.info_outline, text: "InFo"),
            ],
          ),
        )
      ],
    );
  }

  Column horizontal_Icon_Text_button(
      {required IconData icon, required String text ,double iconsize = 30,double fontsize =20}) {
    return Column(
      children: [
        Icon(
          icon,
          color: colorswhite,
          size: iconsize,
        ),
        Text(
          text,
          style: TextStyle(color: colorswhite, fontSize: fontsize),
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

