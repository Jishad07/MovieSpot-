import 'package:flutter/material.dart';

import '../../core/colors/constant_space.dart';

class maincard extends StatelessWidget {
  const maincard({
    super.key,
    required this.maincardwidth,
    required this.maincardheight,
  });

  final double maincardwidth;
  final double maincardheight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: maincardwidth*0.35,
        height: maincardheight*0.25 ,
        // color: Colors.amber,
      
        decoration: BoxDecoration(
          borderRadius: kradius10,
          image: const DecorationImage(image: NetworkImage("https://image.tmdb.org/t/p/w500/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg",),fit:BoxFit.cover ) ),
      ),
    );
  }
}