import 'package:flutter/widgets.dart';

class TextesWidgets extends StatelessWidget {
  final String text;
  final Color textcolor;
  double textsize;
  FontWeight bold;
   TextesWidgets({
    super.key,
    required this.text,
    required this.textcolor,
    required this.textsize,
    this.bold=FontWeight.normal
  });

  @override
  Widget build(BuildContext context) {
    return   Text(text,style: TextStyle(color: textcolor,fontSize: textsize,fontWeight: bold),);
  }
}