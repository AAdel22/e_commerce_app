import 'package:e_commerce_app/Constance.dart';
import 'package:e_commerce_app/Views/Widgets/CustomButton.dart';
import 'package:e_commerce_app/Views/Widgets/CustomButtonSocial.dart';
import 'package:e_commerce_app/Views/Widgets/CustomText.dart';
import 'package:e_commerce_app/Views/Widgets/CustomTextFromField.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
          right: 20.0,
          left: 20.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Welcome,",
                  fontSize: 30,
                ),
                CustomText(
                  text: "Sign Up",
                  fontSize: 18,
                  color: primaryColor,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: "Sign in to Continue",
              fontSize: 14,
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFromField(
              text: "Email",
              hintText: "elool_adel@yahoo.com",
              onSave: () {},
              validatore: () {},
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextFromField(
              text: "Password",
              hintText: "**************",
              onSave: () {},
              validatore: () {},
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: "forget your password",
              fontSize: 14,
              alignment: Alignment.topRight,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(text: "SIGN IN", onPressed: () {}),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: "-OR-",
              alignment: Alignment.center,
              fontSize: 20,
            ),
            SizedBox(
              height: 40,
            ),
            CustomButtonSocial(
              text: "Sign in with Facebook",
              imageName: 'assets/images/facebook.png',
              onPressed: () {},
            ),
            SizedBox(
              height: 10,
            ),
            CustomButtonSocial(
              text: "Sign in with Google",
              imageName: 'assets/images/google.png',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
