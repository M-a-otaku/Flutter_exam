import 'package:exam/src/pages/add_packs/controller/add_pack_controller.dart';
import 'package:get/get.dart';

class AddPackBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>AddPackController());
  }
  
}