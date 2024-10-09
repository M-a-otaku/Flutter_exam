import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastracture/common/data_base.dart';
import '../../../infrastracture/route/route_path.dart';

class LoginController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();


String? validate(String? value) {
    if (value != null) {
      if (value.isEmpty) return 'Required';
    }
    return null;
  }

 void login() {
    if (formKey.currentState?.validate() ?? false) {
      if (DataBase.user[usernameController.text] == passwordController.text) {
        Get.offNamed(RoutePath.home);
      } else {
        Get.showSnackbar(
          const GetSnackBar(
            backgroundColor: Colors.transparent,
            message: 'Wrong password or username',
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

}