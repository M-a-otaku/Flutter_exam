import 'package:exam/src/pages/Items/controller/Items_controller.dart';
import 'package:get/get.dart';

class ItemsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>ItemsController());
  }
  
}