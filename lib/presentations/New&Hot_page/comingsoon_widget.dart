import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_application/presentations/New&Hot_page/widgets/video_widget.dart';

import '../../core/colors/colors.dart';
import '../../core/colors/constant_space.dart';
import '../home_page/screen_home.dart';
import '../widgets/text_widgets.dart';


class ComingSoonWidget extends StatelessWidget {

  
  // int index1;
   ComingSoonWidget({
    super.key,
    // this.index1=0
  });

  @override
  Widget build(BuildContext context) {
   const String imageurl="https://media.themoviedb.org/t/p/w250_and_h141_face/sDH1LkdFOkQmTJaF1sIIniQyFOk.jpg";
    // final imageurl2='https://media.themoviedb.org/t/p/w220_and_h330_face/4q2NNj4S5dG2RLF9CpXsej7yXl.jpg';
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: MediaQuery.of(context).size.height * 0.65,
          // color: Colors.amber,
          child: const Column(
            children: [
              Text(
                "FEB",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 50,
          height: MediaQuery.of(context).size.height * 0.65,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(imageurl: imageurl),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                TextesWidgets(text: "Titanic",textcolor: Colors.white,textsize: 35,bold: FontWeight.bold,),
                 
                  Row(
                    
                    children: [
                     MainPhotobuttons(
                      labal: "Remind Me",
                      icon: Icons.add_alert,
                      iconsize: 20 ,
                      textsize: 10,
                      textcolor: Colors.white.withOpacity(0.5),),
                     
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: MainPhotobuttons(
                        labal: "Info", 
                        icon: Icons.info,
                        textsize:10,
                        iconsize: 20,
                        textcolor: Colors.white.withOpacity(0.5 ),),
                    )
                   
                     
                      
                    ],
                  )
    
                ],
              ),
              TextesWidgets(text: "Coming On Friday", textcolor: ktextwhitecolor.withOpacity(0.7 ), textsize: 16 ,),
              kheight20,
              TextesWidgets(text: "Titanic", textcolor: ktextwhitecolor, textsize: 20,bold: FontWeight.bold,),
              TextesWidgets(
                text: "Landing the lead in the school musical is a dream come true for jodi,until the pressure sends her confidense - and her relationship- into a tailspin  ", 
                textcolor:ktextwhitecolor.withOpacity(0.5), textsize: 12)
            ],
          ),
        )
      ],
    );
  }
}

