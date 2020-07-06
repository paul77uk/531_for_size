import 'package:flutter/material.dart';

class AlternativeExercisePage extends StatelessWidget {
  final String title;
  final int liftIndex;
  final Widget exercise;

  const AlternativeExercisePage(
      {Key key, this.title, this.liftIndex, this.exercise})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          exercise,
          Padding(padding: EdgeInsets.all(18)),
        ],
      ),
    );
  }
}
