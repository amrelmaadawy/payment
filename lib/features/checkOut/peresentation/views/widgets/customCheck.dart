import 'package:flutter/material.dart';

class Customcheck extends StatelessWidget {
  const Customcheck({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: Colors.grey.shade300,
      child: const Positioned(
        right: 0,
        left: 0,
        top: -30,
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.green,
          child: Icon(
            Icons.check,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
