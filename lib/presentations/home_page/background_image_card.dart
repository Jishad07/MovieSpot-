import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'screen_home.dart';

class BackgroundImageCard extends StatelessWidget {
  const BackgroundImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.75,
          
          decoration:const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/vNVFt6dtcqnI7hqa6LFBUibuFiw.jpg",
                  ),
                  fit: BoxFit.fill)),
        ),
         Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.only(bottom: 10 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               MainPhotobuttons(labal: "MyList", icon: Icons.add),
              const  PlayButton(),
                MainPhotobuttons(labal: "Info", icon: Icons.info_outline)
               
              ],
            ),
          ),
        )
      ],
    );
  }
}
// labal: "MyList", icon: Icons.add
// MainPhotobuttons(labal: "Info", icon: Icons.info_outline, required int iconsize)