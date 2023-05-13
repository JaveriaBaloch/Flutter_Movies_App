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
            MoviePoster(imageUrl:'https://image.tmdb.org/t/p/w500/${movie["poster_path"]}'),
            const SizedBox(width: 16,),
            Expanded(
              child: MovieDetailHeader(movie:movie),
            )
          ],
        ),
    );
  }
}
class MovieDetailHeader extends StatelessWidget{
  final Map movie;

  const MovieDetailHeader({super.key, required this.movie});
  @override
  Widget build(BuildContext context){
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(movie["original_title"], style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.05, fontWeight: FontWeight.bold),),
        Padding(
            padding: EdgeInsets.only(top: 15,bottom: 5),
            child:Text("Released:\t"+movie["release_date"])
        ),
        Padding(
            padding: EdgeInsets.only(bottom: 5),
            child:Text("Language:\t"+movie["original_language"])
        ),
        Padding(
            padding: EdgeInsets.only(bottom: 5),
            child:Text("Rating:\t${movie['vote_average']}/10")
        ),
        Padding(
            padding: EdgeInsets.only(bottom: 25),
            child:Text.rich(
              TextSpan(style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w300
              ),
                children: <TextSpan>[
                  TextSpan(
                    text: movie['overview']
                  ),
                  TextSpan(
                      text: "More...",
                    style: TextStyle(color: Colors.indigoAccent)
                  )
                ]
              )
            )
        ),
      ],
    );
  }


}