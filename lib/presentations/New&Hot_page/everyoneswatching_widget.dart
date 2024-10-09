import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../core/colors/colors.dart';
import '../../core/colors/constant_space.dart';
import '../home_page/screen_home.dart';
import '../widgets/text_widgets.dart';
import 'widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final String imageurl="https://media.themoviedb.org/t/p/w250_and_h141_face/ndZ0rmPqY8AtXLdvF14hjBhkuDj.jpg";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        kheight10,
        TextesWidgets(
          text: "Friends", 
          textcolor: ktextwhitecolor,
           textsize: 20,
           bold: FontWeight.bold,),
        kheight10,
        TextesWidgets(
          text: "This sit hitcom follows the merry misadventures of six 20 -samthing pals as the navigate the pitfails of work. Life and love in 1990s manhattan", 
          textcolor: ktextwhitecolor.withOpacity(0.5), textsize: 16),
          kheight20,
         VideoWidget(imageurl: imageurl),
         Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MainPhotobuttons(labal: "Share", icon:Icons.share,iconsize: 30,textcolor: Colors.white.withOpacity(0.5)),
            kwidth10,
            MainPhotobuttons(labal: "MyList", icon:Icons.add,iconsize: 30,textcolor: Colors.white.withOpacity(0.5)),
            kwidth10,
            MainPhotobuttons(labal: "Play", icon: Icons.play_arrow,iconsize: 30,textcolor: Colors.white.withOpacity(0.5),)
          ],
         )
      ],
    );
  }
}
