import 'package:flutter/material.dart';

Widget customAppBar(
    {required String title,
    required double spaceBetweeen,
    required void Function() onPress}) {
  return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
    IconButton(
      onPressed: onPress,
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
    ),
    SizedBox(
      width: spaceBetweeen,
    ),
    Center(
      child: Text(title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
    )
  ]);
}

Widget orderPrice({
  required String name,
  required String price,
  FontWeight fontWeight = FontWeight.normal,
  double fontSize = 16,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        name,
        style: TextStyle(fontSize: fontSize),
      ),
      Text(
        price,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      )
    ],
  );
}

Widget coustomButton({
  required void Function() onPressed,
  required String text,
}) {
  return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(10)),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          )));
}

Widget itemCard({
  required bool isActive,
  required String image,
}) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 600),
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
            width: 100,
            height: 70,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1.5,
                        color: isActive ? Colors.green : Colors.grey),
                    borderRadius: BorderRadius.circular(15)),
                shadows: [
                  BoxShadow(
                      color: isActive ? Colors.grey : Colors.white,
                      blurRadius: 4,
                      offset: const Offset(0, 0),
                      spreadRadius: 0)
                ])),
        Container(
          width: 95,
          height: 65,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Image.asset(image),
        )
      ],
    ),
  );
}

Widget customTextFormField({
  required String text,
  required TextInputType keyboardType,
  required TextEditingController controller,
}) {
  return Container(
    child: TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(text),
      ),
    ),
  );
}
