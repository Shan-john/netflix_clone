import 'package:flutter/material.dart';
import 'package:netflix_cone/presentation/fast_laught/Widget/video_list.dart';

class Screenfastlaught extends StatelessWidget {
  const Screenfastlaught({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
         children: List.generate (10, (index) {
           return VedioListitem(index: index);
         },),

  
    )
   
        );
  }
}
