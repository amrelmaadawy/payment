import 'package:flutter/material.dart';
import 'package:payapp/component/component.dart';
import 'package:payapp/features/checkOut/peresentation/views/paymentView.dart';
import 'package:payapp/features/checkOut/peresentation/views/widgets/paymentList.dart';

class MyCartview extends StatelessWidget {
  const MyCartview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              customAppBar(
                  title: 'My Cart', spaceBetweeen: 100, onPress: () {}),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.width / 1.15,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Image.asset('image/assets/Group 6.png')),
              const SizedBox(
                height: 10,
              ),
              orderPrice(name: 'Order Subtotal', price: '\$42.97'),
              orderPrice(name: 'Discount', price: '\$0'),
              orderPrice(name: 'Shipping', price: '\$8'),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$50.97 ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              coustomButton(
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        context: context,
                        builder: (context) {
                          return const CustomPaymentBottomSheet();
                        });
                  },
                  text: 'Compelet payment')
            ],
          ),
        ),
      ),
    );
  }
}

class CustomPaymentBottomSheet extends StatelessWidget {
  const CustomPaymentBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 16,
        ),
        const Paymentlist(),
        const SizedBox(
          height: 20,
        ),
        coustomButton(onPressed: () {}, text: 'continuo'),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
