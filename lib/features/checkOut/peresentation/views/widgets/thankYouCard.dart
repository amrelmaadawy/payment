import 'package:flutter/material.dart';
import 'package:payapp/component/component.dart';
import 'package:payapp/features/checkOut/peresentation/views/widgets/paidButton.dart';

class Thankyoucard extends StatelessWidget {
  const Thankyoucard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 672,
      decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.grey.shade300),
      child: Padding(
        padding: const EdgeInsets.only(top: 30 + 8),
        child: Column(
          children: [
            const Text(
              'Thank You!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Your transaction was successful',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    orderPrice(
                        name: 'Date',
                        price: '17/4/2024',
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                    const SizedBox(
                      height: 15,
                    ),
                    orderPrice(
                        name: 'Time',
                        price: '10:20',
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                    const SizedBox(
                      height: 15,
                    ),
                    orderPrice(
                        name: 'To',
                        price: 'El-maadawy',
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                    Divider(
                      height: 60,
                      color: Colors.grey.shade500,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$50.97 ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 305,
                      height: 73,
                      decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset('image/assets/logo.png'),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Credit Card'),
                              Text('Masterard **78 '),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 100,
                      width: 100,
                      child:
                          Image.asset('image/assets/SVGRepo_iconCarrier.png')),
                  const Paidbutton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
