import 'package:flutter/material.dart';


class Searchtittletext extends StatelessWidget {
String tittle;
   Searchtittletext({
    super.key,
    required this.tittle
    });
  

  @override
  Widget build(BuildContext context) {
    return  Text(tittle, style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            );
  }
}