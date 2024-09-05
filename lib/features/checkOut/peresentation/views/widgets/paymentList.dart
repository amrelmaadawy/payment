import 'package:flutter/material.dart';
import 'package:payapp/component/component.dart';

class Paymentlist extends StatefulWidget {
  const Paymentlist({super.key, this.isActive = false});
  final bool isActive;

  @override
  State<Paymentlist> createState() => _PaymentlistState();
}

class _PaymentlistState extends State<Paymentlist> {
  List<String> images = const [
    'image/assets/creditcard.png',
    'image/assets/paypal.png.png'
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 70,
          child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                    width: 170,
                  ),
              shrinkWrap: true,
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    activeIndex = index;

                    setState(() {});
                  },
                  child: itemCard(
                      isActive: activeIndex == index, image: images[index]),
                );
              }),
        )
      ],
    );
  }
}
