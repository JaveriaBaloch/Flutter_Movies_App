import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieListViewDetails extends StatelessWidget{
  @override
  late final String MovieTitle;

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
      ),
    );
  }
}