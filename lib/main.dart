import 'package:flutter/material.dart';
import 'package:techblog/menupage.dart';
import 'package:techblog/technews.dart';
import 'package:techblog/scholarships.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TechBlog'),
        ),
      ),
      initialRoute: 'menupage',
      routes: {
        'menupage': (context) => menupage(),
        'scholarships': (context) => scholarships(),
        'technews': (context) => technews(),
      },
    );
  }
}
