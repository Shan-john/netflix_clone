import 'package:flutter/widgets.dart';
import 'package:netflix_cone/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1),
      width: 160,
      height: 240,
      decoration: BoxDecoration(
        borderRadius: borderradius,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(dumpurl),
        ),
      ),
    );
  }
}
