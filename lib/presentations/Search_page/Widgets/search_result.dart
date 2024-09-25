import 'package:flutter/material.dart';
import 'package:netflix_application/presentations/Search_page/Widgets/tittle.dart';

import '../../../core/colors/constant_space.dart';
 
 final String imageurl= "https://image.tmdb.org/t/p/w500/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg";
  
class Searchresultwidget extends StatelessWidget {
  const Searchresultwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
           kheight,
           Searchtittletext(tittle: "Movies & Tv ",),
           kheight,
           Expanded(
            child: GridView.count(
              crossAxisSpacing: 10 ,
              mainAxisSpacing: 10 ,
              shrinkWrap: true,
              crossAxisCount: 3,
              childAspectRatio: 1/2,
              children: List.generate(20,(index) => const Maincard(),),)
           )
      ],
    );
  }
}

class Maincard extends StatelessWidget {
  const Maincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(image: NetworkImage(imageurl,),fit:BoxFit.cover)
      ),
      
    // color: Colors.white,
    );
  }
}