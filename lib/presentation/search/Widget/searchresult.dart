
import 'package:flutter/material.dart';
import 'package:netflix_cone/core/constants.dart';
import 'package:netflix_cone/presentation/Widgets/mainCard.dart';
import 'package:netflix_cone/presentation/search/Widget/title.dart';

const imagaeurl = [
  "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/4fLZUr1e65hKPPVw0R3PmKFKxj1.jpg",
  "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/jDjmnEuNUfWHg8rbW6u8mylkcO0.jpg",
  "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/iOJX54nVAsnPawagFiWXKv1Y6sB.jpg",
];

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchtitleText(title: "Movie and TV"),
       kheight,
        Expanded(
            child: GridView.count(
           
         
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          crossAxisCount: 3,
          childAspectRatio: 1/1.4,
          children: List.generate(20, (index) {
            return MainCard();
          }),
        ))
      ],
    );
  }
}
