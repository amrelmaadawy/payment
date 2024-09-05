import 'package:flutter/material.dart';
import 'package:payapp/component/component.dart';
import 'package:payapp/features/checkOut/peresentation/views/widgets/customCheck.dart';
import 'package:payapp/features/checkOut/peresentation/views/widgets/dashLine.dart';
import 'package:payapp/features/checkOut/peresentation/views/widgets/thankYouCard.dart';

class Thankyouview extends StatelessWidget {
  const Thankyouview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          customAppBar(title: '', spaceBetweeen: 0, onPress: () {}),
          Transform.translate(
            offset: Offset(0, -35),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Thankyoucard(),
                  Positioned(
                    right: 28,
                    left: 28,
                    bottom: MediaQuery.sizeOf(context).height * .2 + 20,
                    child: const Dashline(),
                  ),
                  Positioned(
                    bottom: MediaQuery.sizeOf(context).height * .2,
                    left: -20,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.sizeOf(context).height * .2,
                    right: -20,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                  ),
                  const Positioned(
                      right: 0, left: 0, top: -40, child: Customcheck()),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
