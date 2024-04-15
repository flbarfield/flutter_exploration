import 'package:flutter/material.dart';
import 'list_tile_tutorial_page.dart';

class NewHomePage extends StatelessWidget {
  NewHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Small Learning Apps',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('List Title Tutorial'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ListTileTutorialPage()),
            );
          },
        ),
      ),
    );
  }
}
