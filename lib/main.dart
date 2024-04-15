import 'package:flutter/material.dart';
import 'package:flutter_exploration/pages/list_tile_tutorial_page.dart';
import 'package:flutter_exploration/pages/new_home_page.dart';

// import 'ListTileTutorial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NewHomePage(
        title: 'Filler Apps!',
      ),
    );
  }
}
