import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
    required this.imageurl,
  });

  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
          decoration:  BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                  
                   imageurl
                  ),
                  fit: BoxFit.fill)),
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: CircleAvatar(
              radius: 20 ,
              backgroundColor: Colors.black.withOpacity(0.5),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    color: Colors.white,
                  ))),
        ),
      ],
    );
  }
}