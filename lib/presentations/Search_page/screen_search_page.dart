import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_application/core/colors/constant_space.dart';
import 'package:netflix_application/presentations/Search_page/Widgets/search_result.dart';

import 'Widgets/search_idel.dart';

class ScreenSearchpage extends StatelessWidget {
  const ScreenSearchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
            CupertinoSearchTextField(
                prefixIcon:const Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            suffixIcon:const Icon(CupertinoIcons.xmark_circle_fill, color: Colors.grey,),
            style: const TextStyle(color: Colors.white),
            backgroundColor: Colors.grey.withOpacity(0.4),
            ),
          // Expanded(child: const  Searchidlewidget()),
        const   Expanded(child:   Searchresultwidget()),
                    ],
                  ),
          )),
    );
  }
}
