import 'package:exam/src/pages/Items/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/Items_controller.dart';

class ItemsWidgets extends GetView<ItemsController> {
  const ItemsWidgets({required this.cala,super.key});

final ItemsModel cala; 


  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          const SizedBox(width: 17),
          _titleDescription(),
          const Spacer(),
          _deleteButton(),
          _editButton(),
        ],
      ),
    );
  

  Widget _deleteButton() {
    return IconButton(
      mouseCursor:SystemMouseCursors.help,
      onPressed:() => controller.removePack(cala.id),
      icon: const Icon(Icons.delete_forever_outlined),
      
    );
  }

  Widget _titleDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          cala.name,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        Text(cala.price.toString(),
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400))
      ],
    );
  }

  Widget _editButton() {
    return IconButton(
      onPressed: () => controller.editPack(cala.id),
      icon: const Icon(Icons.edit),
    );
  }
}