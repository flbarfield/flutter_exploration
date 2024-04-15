import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.context,
  });

  final BuildContext context;

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
