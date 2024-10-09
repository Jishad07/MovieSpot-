import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_application/core/colors/constant_space.dart';
 
final imageurl="https://image.tmdb.org/t/p/w500/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg";

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({
    super.key,
    required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        color: Colors.accents[index%Colors.accents.length],
        ),
       Align(
        alignment:Alignment.bottomCenter ,
         child:  Padding(
           padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
           child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black.withOpacity(0.5) ,
                child: IconButton(onPressed: (){
                
               }, icon:const Icon(Icons.volume_off,color:Colors.white,)
               )
               ),
                Column(
            mainAxisAlignment: MainAxisAlignment.end,
             
              children: [
               CircleAvatar(
                radius: 25 ,
                backgroundImage: NetworkImage(imageurl),
               ),
               kheight20,
                 const VideoactionsWidgets(icon:Icons.emoji_emotions, tittle:"LOL") ,
               const   VideoactionsWidgets(icon: Icons.add, tittle:"MyList") ,  
              const   VideoactionsWidgets(icon: Icons.share, tittle: "Share ") ,  
               const  VideoactionsWidgets(icon: Icons.play_arrow, tittle: "Play") ,            
          
              ],
             )
              ],
            ),
          
         ),
       )
      ],
    );
  }
}

class VideoactionsWidgets extends StatelessWidget {
  final IconData icon;
  final String tittle;
  const VideoactionsWidgets({
    super.key,
    required this.icon,
    required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        
        children: [
        Icon(icon,color: Colors.white ,size: 30 ,),
        Text(tittle,style: const TextStyle(color: Colors.white,fontSize: 16 ),)
      ],),
    );
  }
}