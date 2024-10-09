import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_application/presentations/Search_page/Widgets/tittle.dart';

import '../../../core/colors/constant_space.dart';
  

 const  imageurl="https://media.themoviedb.org/t/p/w533_and_h300_bestv2/NNC08YmJFFlLi1prBkK8quk3dp.jpg";


class Searchidlewidget extends StatelessWidget {
  const Searchidlewidget({super.key});

 

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         kheight10,
          //  const Text("Top Searches",style: TextStyle(
          //     color: Colors.white,
          //     fontWeight: FontWeight.bold,
          //     fontSize: 20
          //   ),
          //   ),
         Searchtittletext(tittle: "Top Searches"),
            kheight10,
         Expanded(
           child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) =>const Topsearchitemtile() , 
            separatorBuilder:(context, index) => kheight10 , 
            itemCount:10 ),
         )
          
      ],
    );

  }
}

class Topsearchitemtile extends StatelessWidget {
  const Topsearchitemtile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
    return   Row(
      children: [
     Container(
      width: screenwidth*0.35,
      height: 70 ,
      decoration:const BoxDecoration(
        
        image:DecorationImage(
          image: NetworkImage(imageurl),
          fit:BoxFit.cover )
      ),
     ),
    const Expanded(
       child: Text("Movie name",style: TextStyle(
        color:Colors.white,fontSize: 18
       ),),
     ),
   const  CircleAvatar(
    backgroundColor: Colors.white,
    radius: 25 ,
      child: CircleAvatar(
        radius: 23 ,
        backgroundColor: Colors.black,
        child: Icon(CupertinoIcons.play_fill,color: Colors.white,  )))
      ],
    );
  }
}