import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_cone/core/colors/Colors.dart';
import 'package:netflix_cone/core/constants.dart';
import 'package:netflix_cone/presentation/Widgets/mainTitle.dart';

class Main_Number_Card extends StatelessWidget {
 
  const Main_Number_Card({super.key, });

  @override
  Widget build(BuildContext context) {
    return  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainTitle(title: "top 10 Tv show in india Today"),
                  kheight,
                  LimitedBox(
                    maxHeight: 240,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                            10,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 40,
                                            height: 240,
                                          ),
                                          Container(
                                            width: 160,
                                            height: 240,
                                            decoration: BoxDecoration(
                                              borderRadius: borderradius,
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(dumpurl),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft, 
                                        child: BorderedText(
                                          strokeWidth: 3.0,
                                          strokeColor: colorswhite,
                                          child: Text(
                                            '${index + 1}',
                                            style: TextStyle(
                                              color: colorblack,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 160,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ))),
                  )
                ],
              );
  }
}
