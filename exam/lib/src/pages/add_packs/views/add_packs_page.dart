import 'package:exam/src/pages/add_packs/controller/add_pack_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddItemPage extends GetView<AddPackController> {
  const AddItemPage({super.key});


  @override
  Widget build(BuildContext context)  => Scaffold(
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: _fab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

     AppBar _appBar() => AppBar(
        title: const Text('Add Pack'),
        centerTitle: true,
        foregroundColor: Colors.cyan,
        titleTextStyle: const TextStyle(fontSize: 24, color: Colors.white),
        backgroundColor: Colors.blueAccent,
      );

Widget _fab() {
    return FloatingActionButton(
      mouseCursor: SystemMouseCursors.copy,
      onPressed: controller.submit,
      hoverColor: Colors.white,
      child: const Icon(
        Icons.check,
        color: Colors.blue,
      ),
    );
  }

   Widget _titleField() {
    return TextFormField(
      controller: controller.titleController,
      validator: controller.validator,
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.lightBlueAccent)),
        errorStyle: const TextStyle(color: Colors.lightBlue),
        border: const OutlineInputBorder(),
        labelText: 'Title',
      ),
    );
  }

Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Form(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _titleField(),
          ],
        ),
      ),
    );
  }

}