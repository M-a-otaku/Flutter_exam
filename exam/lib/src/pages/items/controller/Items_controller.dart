import 'package:get/get.dart';

import '../../../infrastracture/route/route_names.dart';
import '../model/items_model.dart';

class ItemsController extends GetxController {
    int idCount = 1;
   RxList<ItemsModel> calas = RxList([]);


Future<void> editPack(int id) async {
    int index = calas.indexWhere((element) => element.id == id);

    Map<String, String> arguments = {
      'name': calas[index].name,
      'price': calas[index].price.toString(),
    };

    final result = await Get.toNamed(RouteNames.edititemsList, arguments: arguments);

    if (result != null) {
      ItemsModel newcala = calas[index].copyWith(
        name: result['title'],
        price: result['description'],
      );
      calas[index] = newcala;
    }
  }

 
 Future<void> addpack() async {
   final List results = await Get.toNamed(RouteNames.addPack);
    calas.add(
      ItemsModel(id: idCount, price: results[1], name: results[0])
    );
    ++idCount;
  }
  void removePack(int id) {
    calas.removeWhere((element) => element.id == id);
  }

}