import 'package:exam/src/pages/Items/controller/Items_controller.dart';
import 'package:exam/src/pages/Items/views/widget/items_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsListPage extends GetView<ItemsController> {
  const ItemsListPage({super.key});

  @override
  Widget build(BuildContext context){
   return Scaffold(
      appBar: _appBar(),
      floatingActionButton: _fab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _body()
      );
  }

  AppBar _appBar(){
   return AppBar(backgroundColor: Colors.cyan,
   title: const Text("Home"),
   );
  }

  Widget _fab() {
    return FloatingActionButton(
      mouseCursor: SystemMouseCursors.cell,
      backgroundColor: Colors.white,
      shape: const CircleBorder(),
      tooltip: 'Click to Add a Pack' , splashColor: Colors.blueGrey,
      hoverColor: Colors.deepPurpleAccent,
      onPressed: controller.addpack,
      child: const Icon(
        Icons.add_box,
        color: Colors.black,
      ),
    );
  }

  Widget _body() {
    return Obx(
      () => ListView.separated(
        itemCount: controller.calas.length,
        separatorBuilder: (_, __) => const Divider(indent: 15, endIndent: 24),
        itemBuilder: (_, index) => ItemsWidgets(cala: controller.calas[index]) ,
      ),
    );
  }

}