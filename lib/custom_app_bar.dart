import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String inputTitle;
  const CustomAppBar({super.key, required this.inputTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        inputTitle,
        style: const TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
