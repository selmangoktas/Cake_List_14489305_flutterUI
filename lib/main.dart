import 'package:bookmark_app_14489305/splash-view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Marks App Example',
      home: SafeArea(
        child: MySplashApp(),
      ),
    );
  }
}
