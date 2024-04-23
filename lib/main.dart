import 'package:flutter/material.dart';
import 'package:flutter_exploration/counter_view.dart';
import 'package:flutter_exploration/pages/new_home_page.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_exploration/counter_observer.dart';

// import 'ListTileTutorial.dart';

void main() {
  // Pre-bloc code ------
  runApp(const MyApp());
  // -----------------------

  // Post Bloc Code ---------------
  // Bloc.observer = const CounterObserver();
  // runApp(const CounterPage());
  // --------------------------------
}

// --------------Pre-bloc code-------------------

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
      home: const NewHomePage(),
    );
  }
}

//--------------------------------

// Post Bloc Code ----------
// class CounterApp extends MaterialApp {
//   const CounterApp({super.key}) : super(home: const CounterPage());
// }
// -----------