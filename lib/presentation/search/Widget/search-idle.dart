import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_cone/core/colors/Colors.dart';
import 'package:netflix_cone/core/constants.dart';
import 'package:netflix_cone/presentation/search/Widget/title.dart';
const imagaeurl = [
  "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/4fLZUr1e65hKPPVw0R3PmKFKxj1.jpg",
  "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/jDjmnEuNUfWHg8rbW6u8mylkcO0.jpg",
  "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/iOJX54nVAsnPawagFiWXKv1Y6sB.jpg",
];

class SearchiDle extends StatelessWidget {
  const SearchiDle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         kheight,
        SearchtitleText(title: "Top Search"),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder:(context, index) { 
            
            return TopSearchItemTile(imageUrl: imagaeurl[1]) ;
          } , separatorBuilder: (context, index) => kheight, itemCount: 10 ),
        ) 
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String  imageUrl;
  const TopSearchItemTile({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
    

    children: [
      Container(
        width: size.width*0.4 ,
        height: 100,
        decoration: BoxDecoration(
        
        image: DecorationImage( fit:BoxFit.cover, image: NetworkImage(imageUrl))
      ),),
     kwidth,
      Expanded(child: Text("title name",style: TextStyle(color: colorswhite,fontSize: 20 ),)),
      Icon(CupertinoIcons.play_circle,color: colorswhite,size: 50,),
    ],
    );
  }
}