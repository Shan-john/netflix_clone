import 'package:flutter/material.dart';
import 'package:netflix_cone/core/constants.dart';
import 'package:netflix_cone/presentation/Widgets/mainTitle.dart';
import 'package:netflix_cone/presentation/Widgets/mainCard.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kheight,
        LimitedBox(
          maxHeight: 240,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  10,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MainCard(),
                      ))),
        )
      ],
    );
  }
}
