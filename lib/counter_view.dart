import 'package:flutter/material.dart';
import 'package:flutter_exploration/custom_app_bar.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: const CustomAppBar(inputTitle: 'Counter'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 100),
              child: const Text(
                '0',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: Column(
                  children: [
                    FloatingActionButton(
                      heroTag: 'btn1',
                      onPressed: () {},
                      child: const Icon(Icons.add_rounded),
                    ),
                    const SizedBox(height: 10),
                    FloatingActionButton(
                      heroTag: 'btn2',
                      onPressed: () {},
                      child: const Icon(Icons.remove),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
