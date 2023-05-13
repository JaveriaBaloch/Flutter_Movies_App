import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Screens/movieposter.dart';

class Movie_Details_Header_With_Poster extends StatelessWidget{
  final Map movie;
  const Movie_Details_Header_With_Poster({super.key, required this.movie});

  @override
  Widget build(BuildContext context){

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.00),
        child: Row(
          children: <Widget>[
            MoviePoster(imageUrl:'https://image.tmdb.org/t/p/w500/${movie["poster_path"]}')
          ],
        ),
    );
  }
}