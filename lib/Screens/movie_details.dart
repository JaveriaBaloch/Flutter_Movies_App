import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieListViewDetails extends StatelessWidget{
  @override
  final String movieTitle;
  final String image;
  final String description;
  final String release_date;
  const MovieListViewDetails({required this.movieTitle, required this.release_date, required this.description,required this.image});
  Widget build(BuildContext context){
    print(image);
    print(description);
    print(release_date);
    return Scaffold(
      appBar: AppBar(
        title: Text("$movieTitle"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Center(
      child: Container(
        child: ElevatedButton(
          onPressed: () {
              Navigator.pop(context);
          },
          child: Text("Go Back"),
        )
      )
      ),
    );
  }
}