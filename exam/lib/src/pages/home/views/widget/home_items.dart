import 'package:exam/src/infrastracture/route/route_names.dart';
import 'package:exam/src/pages/home/model/pack_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeItems extends GetView<GetxController> {
  const HomeItems({required this.packItem,super.key});

 final PackingModel packItem;


  @override
  Widget build(BuildContext context) => 
  Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          const SizedBox(width: 17),
          _title(),
          // const Spacer(),
        ],
      ),
    );

  Widget _title() {
    return InkWell(
      onTap: () => Get.toNamed(RouteNames.itemsList),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            packItem.name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400,color: Colors.white),
          ),
          const SizedBox(height: 7,),
          Text(packItem.totalPrice.toString())
        ],
      ),
    );
  }
}