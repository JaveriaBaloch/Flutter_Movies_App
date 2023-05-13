import 'package:flutter/material.dart';
import 'package:movies/Screens/MovieDetailsThumbnail.dart';
import 'package:movies/Screens/Movie_Details_Header_With_Poster.dart';

class MovieListViewDetails extends StatelessWidget{
  final Map movie;
  const MovieListViewDetails({ required this.movie});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("${movie['original_title']}"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView(
        children: <Widget>[
          MovieDetailsThumbnails(imageUrl: 'https://image.tmdb.org/t/p/w500/${movie["poster_path"]}'),
          Movie_Details_Header_With_Poster(movie: movie)
        ],
      ),
    );
  }
}