import 'package:e_commerce_app/Constance.dart';
import 'package:e_commerce_app/Core/View_model/Auth_view_model.dart';
import 'package:e_commerce_app/Views/Widgets/CustomButton.dart';
import 'package:e_commerce_app/Views/Widgets/CustomButtonSocial.dart';
import 'package:e_commerce_app/Views/Widgets/CustomText.dart';
import 'package:e_commerce_app/Views/Widgets/CustomTextFromField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LoginScreen({Key? key}) : super(key: key);

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
        child: Form(
          key: _formKey,
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
                onSave: (value) {
                  controller.email = value;
                },
                validatore: (value) {
                  if (value == null) {
                    print("ERROR");
                  }
                },
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextFromField(
                text: "Password",
                hintText: "**************",
                onSave: (value) {
                  controller.password = value;
                },
                validatore: (value) {
                  if (value == null) {
                    print("ERROR");
                  }
                },
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
              CustomButton(
                  text: "SIGN IN",
                  onPressed: () {
                    _formKey.currentState?.save();
                    if (_formKey.currentState!.validate()) {
                      controller.signInWithEmailAndPassword();
                    }
                  }),
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
                onPress: () {},
              ),
              SizedBox(
                height: 10,
              ),
              CustomButtonSocial(
                text: "Sign in with Google",
                imageName: 'assets/images/google.png',
                onPress: () {
                  // controller.googleSignInMethod();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
