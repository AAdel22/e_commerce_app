import 'package:e_commerce_app/Constance.dart';
import 'package:e_commerce_app/Core/View_model/Auth_view_model.dart';
import 'package:e_commerce_app/Views/Auth_screens/login_screen.dart';
import 'package:e_commerce_app/Views/Home_screen.dart';
import 'package:e_commerce_app/Views/Widgets/CustomButton.dart';
import 'package:e_commerce_app/Views/Widgets/CustomButtonSocial.dart';
import 'package:e_commerce_app/Views/Widgets/CustomText.dart';
import 'package:e_commerce_app/Views/Widgets/CustomTextFromField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.off(LoginScreen());
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Sign Up",
                    fontSize: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFromField(
                text: "Name",
                hintText: "Alaa ",
                onSave: () {},
                validatore: (value) {
                  if (value == null) {
                    print("ERROR");
                  }
                },
              ),
              SizedBox(
                height: 10,
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
                height: 40,
              ),
              CustomButton(
                text: "SIGN Up",
                onPress: () {
                  _formKey.currentState!.save();
                  if (_formKey.currentState!.validate()) {
                    controller.signInWithEmailAndPassword();
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
