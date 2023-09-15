import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_cone/core/colors/Colors.dart';
import 'package:netflix_cone/core/constants.dart';
import 'package:netflix_cone/presentation/Widgets/app_bar_Widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetlist = [_SmartDownloads(), Section2(), Section3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: AppBarWideget(
              title: "Download",
            )),
        body: ListView.separated(
          padding: EdgeInsets.all(28  ),
            itemBuilder: (context, index) {
              return _widgetlist[index];
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 30,);
            },
            itemCount: _widgetlist.length));
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.settings,
          color: customgreycolors,
        ),
        Text("smart Download"),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final imagelist = [
    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/4fLZUr1e65hKPPVw0R3PmKFKxj1.jpg",
    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/jDjmnEuNUfWHg8rbW6u8mylkcO0.jpg",
    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/iOJX54nVAsnPawagFiWXKv1Y6sB.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          "introducibng  Downloads for you",
          style: TextStyle(
              color: colorswhite, fontSize: 25, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        kheight,
        Text(
          "We willl download a personalised selection of \n movie and shows foe you , so , there's \n ,always something to watch on your \n device ",
          style: TextStyle(
              color: customgreycolors,
              fontSize: 16,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        kheight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: size.width * 0.44 ,
              ),
              downloadImagewWdget(
                size: Size(size.width * 0.44 , size.width * 0.58),
                image: imagelist[0],
                angle: 18,
                margin: EdgeInsets.only(left: 195, bottom: 50),
              ),
              downloadImagewWdget(
                size: Size(size.width * 0.44, size.width * 0.58),
                image: imagelist[1],
                angle: -18,
                margin: EdgeInsets.only(right: 195, bottom: 50),
              ),
              downloadImagewWdget(
                size: Size(size.width * 0.48, size.width * 0.67),
                image: imagelist[2],
                margin: EdgeInsets.only(bottom: 10),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            height: 40,
            minWidth: 40,
            color: colorsblue,
            child: Text(
              "Setup",
              style: TextStyle(
                  color: colorswhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        kheight,
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius:borderradius),
            height: 40,
            minWidth: 40,
            color: colorswhite,
            child: Text(
              "see what you can download",
              style: TextStyle(
                  color: colorblack, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class downloadImagewWdget extends StatelessWidget {
  const downloadImagewWdget({
    super.key,
    required this.image,
    this.angle = 0,
    required this.margin,
    required this.size,
  });

  final String image;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
           
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
      ),
    );
  }
}
