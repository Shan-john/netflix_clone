

import 'package:flutter/material.dart';
import 'package:netflix_cone/core/colors/Colors.dart';
import 'package:netflix_cone/core/constants.dart';

class Home_screen_dynamicappbar extends StatelessWidget {
  const Home_screen_dynamicappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: double.infinity,
        
        child: Column(

          children: [
            Spacer(),
            Row(
             
              children: [
              Image(
              width :50,
             
                image: NetworkImage(netflixlogo),),
                Spacer(),
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
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("TV Show",style: TextStyle(fontSize: 
                20,fontWeight: FontWeight.bold),),
                Text("Movies",style: TextStyle(fontSize: 
                20,fontWeight: FontWeight.bold),),
                Text("Categories",style: TextStyle(fontSize: 
                20,fontWeight: FontWeight.bold),),
              ],
            )
          ],
        ),
      );
  }
}
