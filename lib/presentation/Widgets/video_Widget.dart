
import 'package:flutter/material.dart';
import 'package:netflix_cone/core/colors/Colors.dart';
import 'package:netflix_cone/core/constants.dart';

class Vedio_widget extends StatelessWidget {
  const Vedio_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 250,
            child:
                Image(fit: BoxFit.cover, image: NetworkImage(dumpurl)),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: CircleAvatar(
                radius: 25,
                backgroundColor: colorblack.withOpacity(0.5),
                child: Icon(
                  Icons.volume_off,
                  color: colorswhite,
                )),
          )
        ],
      );
  }
}
