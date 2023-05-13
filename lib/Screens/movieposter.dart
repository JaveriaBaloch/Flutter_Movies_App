import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final String imageUrl;

  const MoviePoster({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Container(
            width: MediaQuery
                .of(context)
                .size
                .width / 4,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover
                )


            ),
          ),

        )
    );
  }
}