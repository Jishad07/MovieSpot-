import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/colors/constant_space.dart';

class NumberCardWidget extends StatelessWidget {
  final int index;
  const NumberCardWidget({super.key,
  required this.index});

  @override
  Widget build(BuildContext context) {
    final maincardwidth = MediaQuery.of(context).size.width;
    final maincardheight = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Stack(
          children: [
            Row(
              children: [
               const  SizedBox(width: 50,),
                Container(
                    width: maincardwidth*0.35,
                    height: maincardheight*0.25 ,
                    // color: Colors.amber,
                  
                    decoration: BoxDecoration(
                      borderRadius: kradius10,
                      image: const DecorationImage(image: NetworkImage("https://image.tmdb.org/t/p/w500/kuxjMVuc3VTD7p42TZpJNsSrM1V.jpg",),fit:BoxFit.cover ) ),
                  ),
              ],
            ),
            Positioned(
              left: 20 ,
              bottom: 0 ,
              child: BorderedText(
                strokeColor: Colors.white ,
                // strokeWidth: 4,
                child: Text("${index+1}",style: const TextStyle(color:Colors.black,fontSize: 100 ,decoration: TextDecoration.none,fontWeight: FontWeight.bold),))),
          ],
        ),
      ],
    );
  }
}