import 'package:flutter/material.dart';

class Paidbutton extends StatelessWidget {
  const Paidbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
            width: 113,
            height: 58,
            decoration: ShapeDecoration(
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
        Container(
          width: 109,
          height: 54,
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
        ),
        const Text(
          'PAID',
          style: TextStyle(
              color: Colors.green, fontSize: 22, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
