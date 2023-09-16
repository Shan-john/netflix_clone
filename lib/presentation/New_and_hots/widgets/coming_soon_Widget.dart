import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_cone/core/colors/Colors.dart';
import 'package:netflix_cone/core/constants.dart';
import 'package:netflix_cone/presentation/New_and_hots/Screen_new_and_hot.dart';
import 'package:netflix_cone/presentation/Widgets/video_Widget.dart';
import 'package:netflix_cone/presentation/home/widget/banner_show_case_area_section1.dart';

class Coming_Soon_Widget extends StatelessWidget {
  const Coming_Soon_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 60,
          child: Column(
            children: [
              Text(
                "Feb",
                style: kTextStyle,
              ),
              Text(
                "18",
                style: kTextStyle.copyWith(
                    fontWeight: FontWeight.normal, fontSize: 16),
              ),
            ],
          ),
        ),
        Container(
          width: size.width - 60,
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
                      icon: Icons.notifications_none,
                      text: "Remind me",
                      iconsize: 25,
                      fontsize: 16),
                  kwidth,
                  horizontal_Icon_Text_button(
                      icon: Icons.info_outline,
                      text: "Info",
                      iconsize: 25,
                      fontsize: 16),
                  kwidth
                ],
              ),
              Text(
                "Coming on Friday",
                style: kTextStyle,
              ),
              kheight,
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
        ),
      ],
    );
  }
}