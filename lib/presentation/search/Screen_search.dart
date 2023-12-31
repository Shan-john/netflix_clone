import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:netflix_cone/presentation/search/Widget/searchresult.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CupertinoSearchTextField(
                    backgroundColor: Colors.grey.withOpacity(0.4),
                    prefixIcon: const Icon(
                      CupertinoIcons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: const Icon(
                      CupertinoIcons.xmark_circle_fill,
                      color: Colors.grey,
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  Expanded(child: SearchResult()),
                ],
              ),
            )));
  }
}
