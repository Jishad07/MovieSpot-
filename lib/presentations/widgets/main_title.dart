// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String tittel;
  const  MainTitle({
    super.key,
  required this.tittel});

  @override
  Widget build(BuildContext context) {
    return  Text(tittel, style:  const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            );
  }
}