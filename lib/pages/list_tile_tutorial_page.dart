import 'package:flutter/material.dart';

class ListTileTutorialPage extends StatelessWidget {
  const ListTileTutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Squaring the Index Value',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                color: (index % 2 == 0 ? Colors.grey[200] : Colors.white),
                alignment: const Alignment(0, 0),
                child: Text(
                    'The Item Number is ${index * index}\nThe index is $index'),
              );
            },
          ),
        ),
      ),
    );
  }
}
