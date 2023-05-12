import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:tmdb_api/tmdb_api.dart';
import 'package:movies/Screens/database.dart';
class MovieListView extends StatelessWidget {
  // String apiKey= "c6791b35095889ea80f7394618c23311";
  @override
  Widget build(BuildContext context){
    // getPopularMovies();
    List moviesList = data["results"];


    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
        itemCount: moviesList.length,
          itemBuilder: (BuildContext context,int index)
          {
        return Card(
          elevation: 4.5,
          color: Colors.white,
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3)
                ),
                  child: Image.network("https://image.tmdb.org/t/p/w500/${moviesList[index]["poster_path"]}"),
              ),
              title:Text(moviesList[index]["original_title"]),
              subtitle: Text(moviesList[index]["release_date"]),
        trailing: Text("..."),
       onTap: ()=>debugPrint(moviesList[index].toString()),
        )
        );
      }
      ),
    );
  }
  // getPopularMovies() async{
  //   String url = "https://api.themoviedb.org/3";
  //   String apiKey = "c6791b35095889ea80f7394618c23311";
  //   String accessToken = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkMzEwOWEyNDA3MjJhZDJjZjQ1ZWM0ZTFjZmQ1NDMzMSIsInN1YiI6IjYxNDlhNTI1YzI4MjNhMDAyYTA5NDI3NCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.MDIlCN44xwoS1cn_5NOjAqHXxaEB8iiKpiJSgK4iuZw";
  //   // String get = "${url}/movie/popular?api_key=${apiKey}";
  //   TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apiKey, accessToken),
  //       logConfig: ConfigLogger(
  //           showLogs: true,
  //           showErrorLogs: true
  //       )
  //   );
  //   Map trendingMovies = await tmdbWithCustomLogs.v3.trending.getTrending();
  //   return trendingMovies['results'];
  //   // setState((){
  //   //
  //   // })
  // }

}