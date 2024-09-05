import 'package:flutter/material.dart';
import 'package:payapp/component/component.dart';
import 'package:payapp/features/checkOut/peresentation/views/thankYouView.dart';
import 'package:payapp/features/checkOut/peresentation/views/widgets/customCridetCard.dart';
import 'package:payapp/features/checkOut/peresentation/views/widgets/paymentList.dart';

// ignore: must_be_immutable
class Paymentview extends StatefulWidget {
  const Paymentview({super.key});

  @override
  State<Paymentview> createState() => _PaymentviewState();
}

class _PaymentviewState extends State<Paymentview> {
  TextEditingController cardNumberController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController cardIdController = TextEditingController();

  TextEditingController expirationDateController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMod = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              customAppBar(
                  title: 'Payment Details',
                  spaceBetweeen: 70,
                  onPress: () {
                    Navigator.pop(context);
                  }),
              const SizedBox(
                height: 15,
              ),
              const Paymentlist(),
              const SizedBox(
                height: 20,
              ),
              CustomCriditCard(
                autovalidateMod: autovalidateMod,
                formKey: formKey,
              ),
              const SizedBox(
                height: 20,
              ),
              coustomButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Thankyouview();
                      },
                    ));
                    // if (formKey.currentState!.validate()) {
                    //   formKey.currentState!.save();

                    // } else {
                    //   autovalidateMod = AutovalidateMode.always;
                    //   setState(() {});
                    // }
                  },
                  text: 'pay')
            ],
          ),
        ),
      ),
    );
  }
}
