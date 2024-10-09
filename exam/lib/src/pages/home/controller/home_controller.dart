
import 'package:exam/src/pages/home/model/pack_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastracture/route/route_names.dart';

class HomeController extends GetxController {

  int idCount = 1;
  RxList<PackingModel> packs = RxList();
  
    final titleController = TextEditingController();
    final formKey = GlobalKey<FormState>();

String? validate(String? value) {
    if (value != null) {
      if (value.isEmpty) return 'please enter a Name';
    }
    return null;
  }

  void goToItemPage(){
   

  }

 Future<void> addpack() async {
   final result = await Get.toNamed(RouteNames.addPack);
    packs.add(
      PackingModel(id: idCount, totalPrice: 0, name: result)
    );
    ++idCount;
  }

}