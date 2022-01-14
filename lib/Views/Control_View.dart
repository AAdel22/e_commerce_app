import 'package:e_commerce_app/Core/View_model/Auth_view_model.dart';
import 'package:e_commerce_app/Views/Auth_screens/login_screen.dart';
import 'package:e_commerce_app/Views/Home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<AuthViewModel> {
  const ControlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthViewModel>() != null) ? HomeScreen() : LoginScreen();
    });
  }
}
