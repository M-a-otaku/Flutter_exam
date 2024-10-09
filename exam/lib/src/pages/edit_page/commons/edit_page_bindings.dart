import 'package:exam/src/pages/edit_page/controller/edit_item_page.dart';
import 'package:get/get.dart';

class EditPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>EditItemPage());
  }
  
}