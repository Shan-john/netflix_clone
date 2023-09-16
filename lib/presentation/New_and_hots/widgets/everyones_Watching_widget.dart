
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_cone/core/constants.dart';
import 'package:netflix_cone/presentation/Widgets/video_Widget.dart';
import 'package:netflix_cone/presentation/home/widget/banner_show_case_area_section1.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    
    
          Vedio_widget(),
                kheight,
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                Text(
                  "TAll GIRL 2",
                  style: GoogleFonts.alkatra(fontSize: 50),
                ),
                Spacer(),
                horizontal_Icon_Text_button(
                    icon: Icons.share,
                    text: "Share",
                    iconsize: 25,
                    fontsize: 16),
                kwidth,
                horizontal_Icon_Text_button(
                    icon: Icons.add,
                    text: "My List",
                    iconsize: 25,
                    fontsize: 16),
                kwidth,
                 horizontal_Icon_Text_button(
                    icon: Icons.play_arrow,
                    text: "Play",
                    iconsize: 25,
                    fontsize: 16),
              ],
            ),
              Row(
              children: [
                SizedBox(
                  width: 25,
                  child: Image(image: NetworkImage(netflixlogo)),
                ),
                Text(
                  "Netflix",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            kheight,
            Text(
              "Tall Girl 2",
              style: kTextStyle,
            ),
            kheight,
            Text(

              "Lsnding teh lead in the school musical is a dream come true for jodi ,until pressure sents her confidence - and her relationship --into a tailspin",
              
              style: kTextStyle.copyWith(fontSize: 16),
            ),
           kheight60
  ],
      ),
    );
  }
}
