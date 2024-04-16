import 'package:flutter/material.dart';
import 'package:flutter_exploration/custom_app_bar.dart';

class ListTileTutorialPage extends StatelessWidget {
  const ListTileTutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: const CustomAppBar(inputTitle: 'Squares index by itself'),
      body: Center(
        child: SizedBox(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  color: (index % 2 == 0
                      ? Colors.deepPurple[100]
                      : Colors.deepPurple[200]),
                  alignment: const Alignment(0, 0),
                  child: Text(
                      'The Item Number is ${index * index}\nThe index is $index'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
