import 'package:flutter/material.dart';
import 'package:netflix_application/core/colors/colors.dart';
import 'package:netflix_application/presentations/Fast_Laughs_page/screen_fast_laughs.dart';
import 'package:netflix_application/presentations/New&Hot_page/screen_new_and_hot_page.dart';
import 'package:netflix_application/presentations/Search_page/screen_search_page.dart';
import 'package:netflix_application/presentations/downloads/widgets/bottom_navigation.dart';
import 'package:netflix_application/presentations/downloads/widgets/screen_downloads.dart';
import 'package:netflix_application/presentations/home_page/screen_home.dart';

class Screenmainpage extends StatelessWidget {
  Screenmainpage({super.key});
 
 final pages=[
 const Homepage(),
 const ScreenNewAndHotPage(),
 const ScreenFastLaughspage(),
 const ScreenSearchpage(),
 ScreenDownload()
  
 ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      backgroundColor: backgroundColor,
      body: SafeArea (
        child: ValueListenableBuilder(valueListenable:intexchangenotifier, builder:(context, int newvalue, _) {
          return pages[newvalue];
        },
        ),
      ),
        bottomNavigationBar:const  BottomNavigationWidget(),
    );
  }
}