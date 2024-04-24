import 'package:flutter/material.dart';
import 'package:flutter_exploration/counter_observer.dart';
import 'package:flutter_exploration/new_home_page.dart';
import 'package:bloc/bloc.dart';

void main() {
  Bloc.observer = const CounterObserver();
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
      home: const NewHomePage(),
    );
  }
}
