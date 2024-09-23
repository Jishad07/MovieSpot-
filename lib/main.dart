import 'package:flutter/material.dart';
import 'package:netflix_application/core/colors/colors.dart';
import 'package:netflix_application/presentations/downloads/main_page/widgets/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
    scaffoldBackgroundColor:backgroundColor,
    // textTheme:TextTheme(bodyText1: TextStyle(color: Colors.black)),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple),
         
        useMaterial3: true,
        
      ),
      
      home:  Screenmainpage(),
    );
  }
}




