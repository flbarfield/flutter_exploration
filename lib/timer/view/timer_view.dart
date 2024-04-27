import 'package:flutter/material.dart';
import 'package:flutter_exploration/custom_app_bar.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(inputTitle: 'Timer'),
      body: Placeholder(),
    );
  }
}
