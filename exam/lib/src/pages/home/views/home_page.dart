import 'package:exam/src/pages/home/controller/home_controller.dart';
import 'package:exam/src/pages/home/views/widget/home_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
        itemCount: controller.packs.length,
        separatorBuilder: (_, __) => const Divider(indent: 15, endIndent: 24),
        itemBuilder: (_, index) => HomeItems(packItem: controller.packs[index]) ,
      ),
    );
  }

}