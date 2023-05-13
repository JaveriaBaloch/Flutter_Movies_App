import 'package:flutter/material.dart';

class MovieDetailsThumbnails extends StatelessWidget{
  final String imageUrl;

  const MovieDetailsThumbnails({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context){
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,

                height: MediaQuery
                    .of(context)
                    .size
                    .width*1.4,

                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    )
                )
            ),
            const Icon(Icons.play_circle_outline, size: 100,color: Colors.white,),

          ],
        ),
        Container(
          height: 180,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white.withOpacity(1),
                    Colors.white.withOpacity(0),
                  ],
                  stops: const [
                    0.0,
                    1.0
                  ])),
        )
      ],
    );
  }
}