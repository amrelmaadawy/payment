import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCriditCard extends StatefulWidget {
  CustomCriditCard(
      {super.key, required this.formKey, required this.autovalidateMod});
  GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMod;

  @override
  State<CustomCriditCard> createState() => _CustomCriditCardState();
}

class _CustomCriditCardState extends State<CustomCriditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          onCreditCardWidgetChange: (CreditCardBrand) {},
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,
          cardBgColor: Colors.green,
        ),
        CreditCardForm(
            autovalidateMode: widget.autovalidateMod,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (CreditCardModel) {
              cardNumber = CreditCardModel.cardNumber;
              expiryDate = CreditCardModel.expiryDate;
              cardHolderName = CreditCardModel.cardHolderName;
              cvvCode = CreditCardModel.cvvCode;
              showBackView = CreditCardModel.isCvvFocused;
              setState(() {});
            },
            formKey: widget.formKey)
      ],
    );
  }
}
