import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_application/core/colors/constant_space.dart';
import '../widgets/main_tittle_card.dart';
import 'background_image_card.dart';
import 'number_title_card.dart';
 
 ValueNotifier<bool>scrolldirection=ValueNotifier(false);
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final maincardwidth = MediaQuery.of(context).size.width;
    final maincardheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ValueListenableBuilder(
        valueListenable: scrolldirection,
         builder:(context, value, child) {
           return  NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction = notification.direction;
          if(direction==ScrollDirection.reverse){
            scrolldirection.value=false;
          }else if(direction==ScrollDirection.forward){
             scrolldirection.value=true;
          }
          return true;
        },
        child: Stack(
          children: [
            ListView(
                children: [
                  const BackgroundImageCard(),
                  MainTittleCard(
                    maincardheight: maincardheight,
                    maincardwidth: maincardwidth,
                    tittle: "Released in the past year",
                  ),
                  MainTittleCard(
                    maincardheight: maincardheight,
                    maincardwidth: maincardwidth,
                    tittle: "Trending now ",
                  ),
                  NumberTitleCard(maincardheight: maincardheight),
                  MainTittleCard(
                      maincardheight: maincardheight,
                      maincardwidth: maincardwidth,
                      tittle: "Tense Dramas"),
                  MainTittleCard(
                      maincardheight: maincardheight,
                      maincardwidth: maincardwidth,
                      tittle: "South Indian Cinima")
                ],
              ),
            scrolldirection.value==true? Container(
                height: MediaQuery.of(context).size.height*0.13,
                width: double.infinity,
                color: Colors.black.withOpacity(0.3),
                child: Column(
                  children: [
                    Row(
                  children: [
                    AnimatedContainer(
                      duration:const Duration(milliseconds: 2000),
                      child: Container(
                        height: 40,
                        width: 40, 
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGZhYUrmk6vDmi1-Pj7oI-HzTpQDCi9-IFTA&s"),fit:BoxFit.fill)
                        ),
                      ),
                    ),
              const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
        ),
        kwidth10,
        Container(
          width: 20,
          height: 20,
          color: Colors.white,
        ),
        kwidth10,
                  ],
                  ),
                 const Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ScrollWidgetsbuttons(text: "Tv Shows",),
                      ScrollWidgetsbuttons(text: "Movies",),
                      ScrollWidgetsbuttons(text: "categories",)
                    ],
                  )
                  ],
                ),
              ):kheight10
          ],
        ),
      );
         },)
      
    ));
  }
}

class ScrollWidgetsbuttons extends StatelessWidget {
  final String text;
  const ScrollWidgetsbuttons({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child:Text(text,style: TextStyle(color: Colors.white.withOpacity(0.9),fontSize: 14),));
  }
}



class MainPhotobuttons extends StatelessWidget {
  final double textsize;
  final double iconsize;
  final String labal;
  final IconData icon;
  final Color textcolor;
   MainPhotobuttons({
    super.key,
     required this.labal, 
     required this.icon,
     this.iconsize=25,
     this.textsize=12,
     this.textcolor=Colors.white,
   });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color:Colors.white,
          size: iconsize ,
        ),
        Text(
          labal,
          style:  TextStyle(
              color: textcolor, fontSize: textsize,fontWeight: FontWeight.bold) ,
        ),
      ],
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.white)),
      onPressed: () {},
      label: const Text(
        "Play",
        style: TextStyle(color: Colors.black),
      ),
      icon: const Icon(
        Icons.play_arrow,
        color: Colors.black,
      ),
    );
  }
}
