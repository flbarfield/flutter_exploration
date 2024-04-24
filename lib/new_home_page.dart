import 'package:flutter/material.dart';
import 'package:flutter_exploration/custom_app_bar.dart';
import 'package:flutter_exploration/calculator/view/calculator_view.dart';
import 'package:flutter_exploration/counter/view/counter_page.dart';
import 'list_tile_tutorial/list_tile_tutorial_page.dart';

class NewHomePage extends StatelessWidget {
  const NewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: const CustomAppBar(inputTitle: 'Small Learning Apps'),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: const Text('List Title Tutorial'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListTileTutorialPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CalculatorPage(),
                      ),
                    );
                  },
                  child: const Text('Calculator')),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CounterPage(),
                      ),
                    );
                  },
                  child: const Text('Counter (Bloc Learning)')),
            ],
          ),
        ),
      ),
    );
  }
}
