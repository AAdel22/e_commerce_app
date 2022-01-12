import 'package:e_commerce_app/Views/Widgets/CustomText.dart';
import 'package:flutter/material.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onPressed;

  const CustomButtonSocial(
      {Key? key,
      required this.text,
      required this.imageName,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade100,
      ),
      child: FlatButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
            10,
          )),
          child: Row(
            children: [
              Image.asset(imageName),
              SizedBox(
                width: 90,
              ),
              CustomText(
                text: text,
              ),
            ],
          )),
    );
  }
}
