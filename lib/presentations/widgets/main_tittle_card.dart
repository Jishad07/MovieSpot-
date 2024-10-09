import 'package:flutter/material.dart';

import '../../core/colors/constant_space.dart';
import 'main_card_widget.dart';
import 'main_title.dart';

class MainTittleCard extends StatelessWidget {
  final String tittle;
  const MainTittleCard({
    super.key,
    required this.maincardheight,
    required this.maincardwidth,
    required this.tittle
  });

  final double maincardheight;
  final double maincardwidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
           padding: const EdgeInsets.only(left: 10,top: 10),
           child: MainTitle(tittel: tittle),
         ),
        kheight10,
        LimitedBox(
          maxHeight: maincardheight * 0.25,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) {
                  return maincard(
                      maincardwidth: maincardwidth,
                      maincardheight: maincardheight);
                },
              )),
        )
      ],
    );
  }
}