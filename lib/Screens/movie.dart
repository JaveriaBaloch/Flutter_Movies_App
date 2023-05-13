
import 'package:flutter/material.dart';
import 'package:movies/Screens/movie_details.dart';

class Movie extends StatelessWidget{
  final Map movie;

  const Movie({super.key, required this.movie});
  @override
  Widget build(BuildContext context){
    return Card(
        elevation: 4.5,
        color: Colors.white,
        child: ListTile(
          leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              width: 50.0,
              height: 150.0,
              child:ClipRRect(
                borderRadius: BorderRadius.circular(4), // Image border
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(48), // Image radius
                  child: Image.network('https://image.tmdb.org/t/p/w500/${movie["poster_path"]}', fit: BoxFit.cover),
                ),
              )
          ),

          title:Text(movie["original_title"]),
          subtitle: Text(movie["release_date"]),
          trailing: const Text("..."),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieListViewDetails(
              movie: (movie)
            )));
          },
        )
    );
  }

}