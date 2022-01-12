import 'package:e_commerce_app/Constance.dart';
import 'package:e_commerce_app/Views/Widgets/CustomText.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          10,
        )),
        padding: EdgeInsets.all(18),
        onPressed: () {},
        color: primaryColor,
        child: CustomText(
          text: text,
          alignment: Alignment.center,
          color: Colors.white,
        ));
  }
}
