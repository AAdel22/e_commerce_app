import 'package:e_commerce_app/Views/Widgets/CustomText.dart';
import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final String text;
  final String hintText;
  final Function onSave;
  final Function validatore;
  const CustomTextFromField({
    Key? key,
    required this.text,
    required this.hintText,
    required this.onSave,
    required this.validatore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            fontSize: 14,
            color: Colors.green.shade900,
          ),
          TextFormField(
            onSaved: (value) {},
            validator: (value) {},
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              fillColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
