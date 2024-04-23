import 'package:flutter/material.dart';
import 'package:flutter_exploration/counter_cubit.dart';
import 'package:flutter_exploration/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              // child: BlocBuilder<CounterCubit, int>(
              //   builder: (context, state) {
              //     return  Text(
              //       '$state',
              //       style: const TextStyle(
              //         color: Colors.white,
              //         fontSize: 60,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     );
              //   },
              // ),
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
                      onPressed: () {
                        context.read<CounterCubit>().increment();
                      },
                      child: const Icon(Icons.add_rounded),
                    ),
                    const SizedBox(height: 10),
                    FloatingActionButton(
                      heroTag: 'btn2',
                      onPressed: () {
                        context.read<CounterCubit>().decrement();
                      },
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
