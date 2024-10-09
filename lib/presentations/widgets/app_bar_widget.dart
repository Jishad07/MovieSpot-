import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/colors/constant_space.dart';

// ignore: must_be_immutable
class Appbarwidget extends StatelessWidget {
   Appbarwidget({super.key,required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth10,
         Text(
           title,
           
            style: GoogleFonts.roboto(
              textStyle:const  TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
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
    );
  }
}


