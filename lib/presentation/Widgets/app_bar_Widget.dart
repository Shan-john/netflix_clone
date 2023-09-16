import 'package:flutter/material.dart';

import 'package:netflix_cone/core/colors/Colors.dart';
import 'package:netflix_cone/core/constants.dart';

class AppBarWideget extends StatelessWidget {
  final title;
  final PreferredSizeWidget? bottom;
  const AppBarWideget({super.key, this.title, this.bottom});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
  
      title: Text(
        title,
        style: TextStyle(
            color: customgreycolors, fontWeight: FontWeight.w900, fontSize: 30),
      ),
      actions: const [
        Icon(
          Icons.cast,
          size: 30,
          color: customgreycolors,
        ),
        kwidth,
        Icon(
          Icons.emoji_emotions,
          size: 30,
          color: customgreycolors,
        ),
        kwidth
      ],
      bottom: bottom,
    );
  }
}
