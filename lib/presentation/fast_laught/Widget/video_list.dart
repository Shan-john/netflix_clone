import 'package:flutter/material.dart';

import 'package:netflix_cone/core/colors/Colors.dart';
import 'package:netflix_cone/core/constants.dart';

class VedioListitem extends StatelessWidget {
  const VedioListitem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // left sized
                CircleAvatar(
                  radius: 30 ,
                  backgroundColor: Colors.black26,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.volume_off,
                        color: colorswhite,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                //right
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 25,
                      backgroundImage: NetworkImage(dumpurl),
                      ),
                      kheight,
                      VideoActionWidgets(icon: Icons.emoji_emotions_sharp, title: "LOL"),
                       VideoActionWidgets(icon: Icons.add, title: "myList"),
                        VideoActionWidgets(icon: Icons.share, title: "Share"),
                         VideoActionWidgets(icon: Icons.play_circle_fill, title: "Play"),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidgets extends StatelessWidget {
  const VideoActionWidgets(
      {super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        kheight,
        Icon(icon,color: Colors.white,),
        Text(title,style: TextStyle(fontSize: 16 ),),
        kheight

      ],
    );
  }
}
