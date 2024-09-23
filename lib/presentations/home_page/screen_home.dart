import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: Text("this is home page ",style: TextStyle(color: Colors.white),),
    );
  }
}