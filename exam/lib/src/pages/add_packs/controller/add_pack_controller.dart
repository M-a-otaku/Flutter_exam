import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPackController extends GetxController {
    final titleController = TextEditingController();
      final formKey = GlobalKey<FormState>();
String? validator(String? input) {
    if (input != null) {
      if (input.isEmpty) return 'please Enter a Name';
    }
    return null;
  }

  void submit() async {
    if (formKey.currentState?.validate() ?? false) {
      String pack = titleController.text;
      // List<String> todo = [titleController.text, descriptionController.;
      Get.back<String>(result: pack);
    }
  }

  @override
  void onClose() {
    super.onClose();
    titleController.dispose();
      }
}