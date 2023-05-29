import 'package:flutter/material.dart';

import 'package:podkes_app/home_page.dart';
import 'package:podkes_app/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/homePage": (context) => const HomePage(),
        "/searchPage": (context) => const SearchPage(),
       
      },
      home: const HomePage(),
    );
  }
}
