import 'package:flutter/material.dart';
import 'list_tile_tutorial_page.dart';

class NewHomePage extends StatelessWidget {
  NewHomePage({super.key, required this.title});
  final String title;

  dynamic page;

  dynamic setPage(page) {
    switch (page) {
      case 'listpage':
        page = ListTileTutorialPage();
      default:
        page = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 80,
        color: Colors.blue,
        child: const Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Logo w txt'),
              Text('Center Logo'),
              Text("Icons"),
            ],
          ),
        ),
      ),
    );
  }
}
