import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_cone/core/colors/Colors.dart';
import 'package:netflix_cone/core/constants.dart';
import 'package:netflix_cone/presentation/Widgets/app_bar_Widget.dart';

class screenNewsAndHot extends StatelessWidget {
  const screenNewsAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      animationDuration: Duration(milliseconds: 460),
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBarWideget(
              title: "New & Hot",
              bottom: TabBar(
                  unselectedLabelColor: colorswhite,
                  labelColor: colorblack,
                  indicator: BoxDecoration(
                    color: colorswhite,
                    borderRadius: Tabborderradius,
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        width: 250,
                        child: Center(
                            child: Text(
                          "🍿 Coming soon",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        )),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 250,
                        child: Center(
                            child: Text(
                          "👀 Everyone's watching ",
                          style: TextStyle(fontSize: 17),
                        )),
                      ),
                    ),
                  ]),
            ),
          ),
          body: TabBarView(
            children: [
              _BuildComingSoon(context),
              _BuildEveryonswatching(),
            ],
          )),
    );
  }
}

_BuildComingSoon(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return ListView(
    children: [
      kheight20,
      Row(
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
                  style: kTextStyle.copyWith(fontWeight: FontWeight.normal,fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
           
            width: size.width - 60,
            height: 500,
            color: colorsblue,
            child: Column(
           crossAxisAlignment : CrossAxisAlignment.start, 
              children: [
              const  SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(dumpurl)),
                ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Movie Name",style: GoogleFonts.alkatra(fontSize: 60),),
                  )
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

_BuildEveryonswatching() {
  return kheight;
}
