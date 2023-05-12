
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:tmdb_api/tmdb_api.dart';
import 'package:movies/Screens/database.dart';
import 'package:movies/Screens/movie_details.dart';
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
                  borderRadius: BorderRadius.circular(3),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                width: 50.0,
                height: 150.0,
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(4), // Image border
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48), // Image radius
                      child: Image.network('https://image.tmdb.org/t/p/w500/${moviesList[index]["poster_path"]}', fit: BoxFit.cover),
                    ),
                  )
                  // child: Image.network("https://image.tmdb.org/t/p/w500/${moviesList[index]["poster_path"]}",
                  //   height: 150.0,
                  //   width: 100.0
                  // ),
              ),
              title:Text(moviesList[index]["original_title"]),
              subtitle: Text(moviesList[index]["release_date"]),
        trailing: Text("..."),
       onTap: (){
                print(moviesList[index]);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieListViewDetails(
                  movieTitle: (moviesList[index]["original_title"] ?? "Not Found"),
                  description: (moviesList[index]["overview"] ?? "Not Found"),
                  image: 'https://image.tmdb.org/t/p/w500/${moviesList[index]["poster_path"]}',
                  release_date: " ${moviesList[index]["release_date"]}",
                )));
       },
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