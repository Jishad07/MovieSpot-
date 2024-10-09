import 'package:flutter/widgets.dart';

import '../../core/colors/constant_space.dart';
import '../widgets/main_title.dart';
import 'number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
    required this.maincardheight,
  });

  final double maincardheight;

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
               padding: const EdgeInsets.only(left: 10,top: 10),
               child: MainTitle(tittel: "Top 1 Tv Shows in India Today"),
             ),
            kheight10,
            LimitedBox(
              maxHeight: maincardheight * 0.25,
              child: ListView(
     scrollDirection: Axis.horizontal,
     children: List.generate(
       10,
       (index) {
         return  NumberCardWidget(index: index,);
       },
     )),
            )
          ],
        );
  }
}