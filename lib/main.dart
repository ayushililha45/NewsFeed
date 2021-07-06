import 'package:flutter/material.dart';
import 'package:newsfeed/view/pages/home_page.dart';
import 'package:newsfeed/view/presentation/conversations.dart';
import 'package:newsfeed/view/presentation/themes.dart';

void main() => runApp(Leaf());

class Leaf extends StatelessWidget {
  const Leaf({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[300],
        brightness: Brightness.light,
        textTheme: TextTheme(
          title: TextThemes.title,
          subtitle: TextThemes.subtitle,
          body1: TextThemes.body1,
        ),
      ),
      //home: Conversations(),

      home: HomePage(),
    );
  }
}
