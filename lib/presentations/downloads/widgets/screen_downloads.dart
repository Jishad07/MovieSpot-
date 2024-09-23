import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_application/core/colors/colors.dart';
import 'package:netflix_application/core/colors/constant_space.dart';
import 'package:netflix_application/presentations/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
 const ScreenDownload({super.key});
  final _widgetslist = const [
    Smartdownloads(),
    Section2(),
    Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Appbarwidget(
            title: "Downloads",
          ),
        ),
        body:ListView.separated(
          padding:const EdgeInsets.all(15 ),
          itemBuilder: (context, index) => _widgetslist[index],
          separatorBuilder: (context, index) =>const SizedBox(height: 20,),
          itemCount:_widgetslist.length)
        );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List imagelist = [
      "https://image.tmdb.org/t/p/w500/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg",
      "https://image.tmdb.org/t/p/w500/kuxjMVuc3VTD7p42TZpJNsSrM1V.jpg",
      "https://image.tmdb.org/t/p/w500/iADOJ8Zymht2JPMoy3R7xceZprc.jpg",
    ];
    return Column(
      children: [
        const Text(
          textAlign: TextAlign.center,
          "Introducing Downloads For You",
          style: TextStyle(
              color: ktextwhitecolor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          textAlign: TextAlign.center,
          "We will dounload a personalized selection of movies and shows for you, so there is always something to watch on your\n  device ",
          style: TextStyle(color: Colors.grey, fontSize: 17),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.7),
                  radius: size.width * 0.3  ,
                ),
              ),
              Downloadimagewidget(
                size: size,
                imagelist: imagelist[2],
                margin: const EdgeInsets.only(left: 125),
                angle: 20,
              ),
              Downloadimagewidget(
                size: size,
                imagelist: imagelist[1],
                margin: const EdgeInsets.only(right: 125),
                angle: -20,
              ),
              Downloadimagewidget(
                  size: size,
                  imagelist: imagelist[0],
                  margin: const EdgeInsets.only(left: 0)),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
              onPressed: () {},
              color: kbuttoncolorblue,
              child: const Text(
                "SetUp",
                style: TextStyle(
                    color: ktextwhitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
              onPressed: () {},
              color: kbuttoncolorwhite,
              child: const Text(
                "See What You can Download",
                style: TextStyle(
                    color: ktextblackcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
        ),
      ],
    );
  }
}

class Smartdownloads extends StatelessWidget {
  const Smartdownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          color: ktextwhitecolor,
        ),
        Text(
          "Smart Downloads",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class Downloadimagewidget extends StatelessWidget {
  const Downloadimagewidget({
    super.key,
    this.angle = 0,
    required this.size,
    required this.imagelist,
    required this.margin,
  });

  final Size size;
  final String imagelist;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * 0.35  ,
        height: size.height * 0.25,
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(imagelist)),
            borderRadius: BorderRadius.circular(18)),
      ),
    );
  }
}
